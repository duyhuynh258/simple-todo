import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/application/sign_in_bloc.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

import '../../helpers/helpers.dart';

User get user => const User(
    id: 'randomUniqueId',
    emailAddress: 'test@test.gmail.com',
    name: 'Test User',
    emailVerified: true);

void main() {
  late AuthRepository authRepositoryMock;
  late AuthBloc authBlocMock;
  late BehaviorSubject<dartz.Option<User?>> userChangesSubject;
  setUpAll(() {
    authRepositoryMock = AuthRepositoryMock();
    userChangesSubject = BehaviorSubject<dartz.Option<User?>>();
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

    blocTest<SignInBloc, SignInState>(
      '',
      setUp: () {},
      build: () => SignInBloc(authRepositoryMock, authBlocMock),
      expect: () => <SignInState>[],
    );
  });
}
