import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

class AuthRepositoryMock extends Mock implements AuthRepository {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class FakeAuthState extends Fake implements AuthState {}

class FakeAuthEvent extends Fake implements AuthEvent {}
