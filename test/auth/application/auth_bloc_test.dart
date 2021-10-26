import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

import '../../helpers/helpers.dart';

User get verifiedUser => const User(
      id: 'randomUniqueId',
      emailAddress: 'test@test.gmail.com',
      name: 'Test User',
      emailVerified: true,
    );

User get notVerifiedUser => const User(
      id: 'randomUniqueId2',
      emailAddress: 'notVerifiedUser@test.gmail.com',
      name: 'Test User With not verified email',
      emailVerified: false,
    );

void main() {
  late AuthRepository authRepositoryMock;
  late BehaviorSubject<dartz.Option<User?>> userChangesSubject;
  setUp(() {
    authRepositoryMock = AuthRepositoryMock();
    userChangesSubject = BehaviorSubject<dartz.Option<User?>>();
  });

  group('AuthBloc', () {
    blocTest<AuthBloc, AuthState>(
      'Initial state is AuthState.initial()',
      setUp: () {
        when(() => authRepositoryMock.onUserChanged)
            .thenAnswer((invocation) => Stream.value(dartz.optionOf(null)));
      },
      build: () => AuthBloc(authRepositoryMock),
      verify: (b) => expect(b.state, equals(const AuthState.initial())),
    );

    blocTest<AuthBloc, AuthState>(
      'Emit unauthenticated when no user signed in',
      setUp: () {
        when(() => authRepositoryMock.onUserChanged)
            .thenAnswer((invocation) => Stream.value(dartz.optionOf(null)));

        when(() => authRepositoryMock.getSignedInUser())
            .thenAnswer((invocation) => Future.value(dartz.optionOf(null)));
      },
      build: () => AuthBloc(authRepositoryMock),
      expect: () => [const AuthState.unauthenticated()],
    );

    blocTest<AuthBloc, AuthState>(
      'Emit authenticated when user signed in.',
      setUp: () {
        when(() => authRepositoryMock.onUserChanged).thenAnswer(
          (invocation) => Stream.value(dartz.optionOf(verifiedUser)),
        );

        when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
          (invocation) => Future.value(dartz.optionOf(verifiedUser)),
        );
      },
      build: () => AuthBloc(authRepositoryMock),
      expect: () => [AuthState.authenticated(verifiedUser)],
    );

    blocTest<AuthBloc, AuthState>(
      'Emit unauthenticated when user signed out successfully.',
      setUp: () {
        // Mock user changes
        final userSubject = BehaviorSubject<dartz.Option<User?>>();
        final userStream = userSubject.asBroadcastStream();
        when(() => authRepositoryMock.onUserChanged)
            .thenAnswer((invocation) => userStream);
        when(() => authRepositoryMock.getSignedInUser())
            .thenAnswer((invocation) => Future.value(dartz.optionOf(null)));

        // Mock handle sign out.
        when(() => authRepositoryMock.signOut()).thenAnswer(
          (invocation) => Future.value(null).then((value) {
            // Add null to user stream to simulated firebase signed out.
            Future.delayed(const Duration(milliseconds: 150), () {
              userSubject.add(dartz.optionOf(null));
            });
          }),
        );
      },
      build: () => AuthBloc(authRepositoryMock),
      seed: () => AuthState.authenticated(verifiedUser),
      act: (b) => b.add(const AuthEvent.signedOut()),
      expect: () => [const AuthState.unauthenticated()],
    );

    blocTest<AuthBloc, AuthState>(
      'Not emit authenticated if email not verified',
      setUp: () {
        // Mock user changes
        final userStream = userChangesSubject.asBroadcastStream();
        when(() => authRepositoryMock.onUserChanged)
            .thenAnswer((invocation) => userStream);
      },
      build: () => AuthBloc(authRepositoryMock),
      seed: () => const AuthState.unauthenticated(),
      act: (b) {
        when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
          (invocation) => Future.value(dartz.optionOf(notVerifiedUser)),
        );
        userChangesSubject.add(dartz.optionOf(notVerifiedUser));
      },
      expect: () => <AuthState>[],
    );
  });
}
