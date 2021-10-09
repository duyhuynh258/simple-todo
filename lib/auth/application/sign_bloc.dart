//State
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

part 'sign_bloc.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.inProgress(AuthProvider authProvider) =
      SignInProgress;

  const factory SignInState.success(
      {required User user,
      required AuthProvider authProvider,
      required bool isNewUser}) = _Success;

  const factory SignInState.resetPasswordEmailSent() = _ResetPasswordEmailSent;

  const factory SignInState.failure({
    required String errorMessage,
    required AuthProvider authProvider,
  }) = _Failure;
}

class SignInBloc extends Cubit<SignInState> {
  SignInBloc(this._authRepository, this._authBloc)
      : super(const SignInState.initial());
  final AuthRepository _authRepository;
  final AuthBloc _authBloc;

  //to signIn user
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    //emitting signInProgress state
    emit(const SignInState.inProgress(AuthProvider.email));
    late User signedInUser;
    late bool isSignedInUserNew;
    final signInFailureOrSuccess =
        await _authRepository.signInWithEmailAndPassword(
            email: email,
            password: password,
            onSuccess: (user, isNewUser) {
              signedInUser = user;
              isSignedInUserNew = isNewUser;
            });

    signInFailureOrSuccess.fold((l) {
      //failure
      emit(const SignInState.failure(
          errorMessage: 'Storage error', authProvider: AuthProvider.email));
    }, (r) {
      //success
      emit(SignInState.success(
          user: signedInUser,
          authProvider: AuthProvider.email,
          isNewUser: isSignedInUserNew));
      _authBloc.add(const AuthEvent.authCheckRequested());
    });
  }

  Future<void> resetPassword({required String withEmail}) async {
    final resultFailureOrSuccess =
        await _authRepository.resetPassword(withEmail);
    resultFailureOrSuccess.fold(
        (l) => emit(const SignInState.resetPasswordEmailSent()), (r) => null);
  }

  Future<void> signInWithGoogle() async {
    final signInWithGoogleFailureOrSuccess =
        await _authRepository.signInWithGoogle();

    signInWithGoogleFailureOrSuccess.fold(
        (l) => emit(SignInState.failure(
            errorMessage: l.toString(), authProvider: AuthProvider.gmail)),
        (r) => null);
  }
}
