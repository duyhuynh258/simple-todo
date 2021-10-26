import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/application/sign_in_bloc.dart';
import 'package:simple_todo_app/auth/domain/auth_failure.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

import '../../helpers/helpers.dart';

User get user => const User(
      id: 'randomUniqueId',
      emailAddress: 'test@test.gmail.com',
      name: 'Test User',
      emailVerified: true,
    );

void main() {
  late AuthRepository authRepositoryMock;
  late AuthBloc authBlocMock;
  setUp(() {
    authRepositoryMock = AuthRepositoryMock();
    authBlocMock = MockAuthBloc();
  });

  group('SignInBloc', () {
    blocTest<SignInBloc, SignInState>(
      'Initial state is SignInState.initial()',
      setUp: () {
        when(() => authRepositoryMock.onUserChanged)
            .thenAnswer((invocation) => Stream.value(dartz.optionOf(null)));
      },
      build: () => SignInBloc(
        authRepositoryMock,
        authBlocMock,
      ),
      verify: (b) => expect(b.state, equals(const SignInState.initial())),
    );

    group('SignInBloc.signInWithEmailAndPassword', () {
      blocTest<SignInBloc, SignInState>(
        'Emit failure when AuthRepository.signInWithEmailAndPassword failed.',
        setUp: () {
          when(
            () => authRepositoryMock.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
              onSuccess: any(named: 'onSuccess'),
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.serverUserNotFound(),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.signInWithEmailAndPassword(
          email: 'randomEmail',
          password: 'randomPassword',
        ),
        expect: () => [
          const SignInState.inProgress(AuthProvider.email),
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Contained "AuthFailure"',
                contains('AuthFailure'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is email',
                equals(AuthProvider.email),
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'Emit exact errorMessage when AuthRepository.signInWithEmailAndPassword'
        ' failed with AuthFailure.serverUnknownError if errorMessage omitted.',
        setUp: () {
          when(
            () => authRepositoryMock.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
              onSuccess: any(named: 'onSuccess'),
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.serverUnknownError(
                  errorMessage: 'Unknown error',
                ),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.signInWithEmailAndPassword(
          email: 'randomEmail',
          password: 'randomPassword',
        ),
        expect: () => [
          const SignInState.inProgress(AuthProvider.email),
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Same message with unknown failure',
                equals('Unknown error'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is email',
                equals(AuthProvider.email),
              ),
        ],
      );
    });

    group('SignInBloc.resetPassword', () {
      blocTest<SignInBloc, SignInState>(
        'Emit failure when AuthRepository.resetPassword failed.',
        setUp: () {
          when(
            () => authRepositoryMock.resetPassword(
              'randomEmail',
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.serverInvalidEmail(),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.resetPassword(
          withEmail: 'randomEmail',
        ),
        expect: () => [
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Contained $AuthFailure',
                contains('AuthFailure'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is email',
                equals(AuthProvider.email),
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'Emit exact errorMessage when AuthRepository.resetPassword'
        ' failed with AuthFailure.serverUnknownError if errorMessage omitted.',
        setUp: () {
          when(
            () => authRepositoryMock.resetPassword(
              'randomEmail',
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.serverUnknownError(
                  errorMessage: 'Unknown error',
                ),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.resetPassword(
          withEmail: 'randomEmail',
        ),
        expect: () => [
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Same message with unknown failure',
                equals('Unknown error'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is email',
                equals(AuthProvider.email),
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'Emit success if resetPassword email is sent.',
        setUp: () {
          when(
            () => authRepositoryMock.resetPassword(
              'randomEmail',
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.right(dartz.unit),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.resetPassword(
          withEmail: 'randomEmail',
        ),
        expect: () => [const SignInState.resetPasswordEmailSent()],
      );
    });

    group('SignInBloc.signInWithGoogle', () {
      blocTest<SignInBloc, SignInState>(
        'Emit failure when AuthRepository.signInWithGoogle failed.',
        setUp: () {
          when(
            () => authRepositoryMock.signInWithGoogle(
              onSuccess: any(named: 'onSuccess'),
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.cancelledByUser(),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.signInWithGoogle(),
        expect: () => [
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Contained $AuthFailure',
                contains('AuthFailure'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is gmail',
                equals(AuthProvider.gmail),
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'Emit exact errorMessage when AuthRepository.signInWithGoogle'
        ' failed with AuthFailure.serverUnknownError if errorMessage omitted.',
        setUp: () {
          when(
            () => authRepositoryMock.signInWithGoogle(
              onSuccess: any(named: 'onSuccess'),
            ),
          ).thenAnswer(
            (_) => Future<dartz.Either<AuthFailure, dartz.Unit>>.value(
              dartz.left(
                const AuthFailure.serverUnknownError(
                  errorMessage: 'Unknown error',
                ),
              ),
            ),
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.signInWithGoogle(),
        expect: () => [
          isA<SignInFailed>()
              .having(
                (p0) => p0.errorMessage,
                'Same message with unknown failure',
                equals('Unknown error'),
              )
              .having(
                (p1) => p1.authProvider,
                'Auth provider is gmail',
                equals(AuthProvider.gmail),
              ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'Emit sign in success with success sign in with google.',
        setUp: () {
          when(
            () => authRepositoryMock.signInWithGoogle(
              onSuccess: any(named: 'onSuccess'),
            ),
          ).thenAnswer(
            (_) {
              final dynamic onSuccess =
                  _.namedArguments[const Symbol('onSuccess')];
              if (onSuccess is SignInSuccessCallback) {
                onSuccess.call(user, true);
              }
              return Future.value(dartz.right(dartz.unit));
            },
          );
        },
        build: () => SignInBloc(authRepositoryMock, authBlocMock),
        act: (b) async => b.signInWithGoogle(),
        expect: () => [
          SignInState.success(
            user: user,
            authProvider: AuthProvider.gmail,
            isNewUser: true,
          )
        ],
      );
    });
  });
}
