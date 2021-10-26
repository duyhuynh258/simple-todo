import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_todo_app/auth/domain/auth_failure.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/firebase_exception_code_mapper.dart';
import 'package:simple_todo_app/auth/infrastructure/firebase_user_mapper.dart';

typedef SignInSuccessCallback = void Function(User, bool);

class AuthRepository {
  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  ) {
    _firebaseAuth.userChanges().listen((firebaseUser) {
      _onUserChanged.add(optionOf(_firebaseUserMapper.toDomain(firebaseUser)));
    });
  }

  final firebase.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;
  Stream<Option<User?>> get onUserChanged => _onUserChanged.asBroadcastStream();
  final BehaviorSubject<Option<User?>> _onUserChanged = BehaviorSubject();

  void dispose() {
    _onUserChanged.close();
  }

  Future<Option<User>> getSignedInUser() async {
    return optionOf(_firebaseUserMapper.toDomain(_firebaseAuth.currentUser));
  }

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddressStr,
    required String passwordStr,
  }) async {
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmail());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
    SignInSuccessCallback? onSuccess,
  }) async {
    try {
      final credentials = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final firebaseUser = credentials.user;
      if (firebaseUser == null) {
        // Should not happen.
        return left(const AuthFailure.userNotFound());
      }
      if (firebaseUser.emailVerified == false) {
        return left(const AuthFailure.emailNotVerified());
      }

      final user = FirebaseUserMapper().toDomain(firebaseUser)!;

      onSuccess?.call(user, credentials.additionalUserInfo?.isNewUser ?? false);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.wrongEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    } on firebase.FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.wrongEmailAndPasswordCombination());
      } else {
        return left(AuthFailure.serverError(errorMessage: e.code));
      }
    } catch (e) {
      return left(AuthFailure.serverError(errorMessage: e.toString()));
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle({
    SignInSuccessCallback? onSuccess,
  }) async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = firebase.GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      final credentials =
          await _firebaseAuth.signInWithCredential(authCredential);
      final user = FirebaseUserMapper().toDomain(credentials.user);
      if (user == null) {
        // Should not happen.
        return left(const AuthFailure.userNotFound());
      }
      onSuccess?.call(user, credentials.additionalUserInfo?.isNewUser ?? false);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<void> signOut() async {
    await Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<Either<AuthFailure, Unit>> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmail());
      } else if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      rethrow;
    }
  }

  //create user account
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword({
    required String email,
    required String password,
    SignInSuccessCallback? onSuccess,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = FirebaseUserMapper().toDomain(userCredential.user);
      if (user == null) {
        return left(const AuthFailure.userNotFound());
      }
      //verify email address
      await userCredential.user!.sendEmailVerification().then((value) =>
          onSuccess?.call(
              user, userCredential.additionalUserInfo?.isNewUser ?? false));
      return right(unit);
    } on firebase.FirebaseAuthException catch (e) {
      return left(e.code.firebaseErrorCodeToFailure());
    } on SocketException catch (_) {
      return left(const AuthFailure.noInternet());
    } catch (e) {
      return left(AuthFailure.serverError(errorMessage: e.toString()));
    }
  }
}
