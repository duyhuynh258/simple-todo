import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

part 'auth_bloc.freezed.dart';

enum AuthProvider { gmail, fb, email, mobile, apple }

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    _userChangesSubscription = _authRepository.onUserChanged().listen((user) {
      add(const AuthEvent.authCheckRequested());
    });
  }

  final AuthRepository _authRepository;
  late StreamSubscription _userChangesSubscription;

  @override
  Future<void> close() {
    _userChangesSubscription.cancel();
    return super.close();
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authRepository.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _authRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;

  const factory AuthEvent.signedOut() = _SignedOut;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated(User user) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}
