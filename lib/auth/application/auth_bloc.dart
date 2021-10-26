import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

part 'auth_bloc.freezed.dart';

enum AuthProvider { gmail, email, apple }

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        authCheckRequested: () async {
          final userOption = await _authRepository.getSignedInUser();

          final state = userOption.fold<AuthState>(
            () => const AuthState.unauthenticated(),
            (user) => AuthState.authenticated(user),
          );
          emit(state);
        },
        signedOut: () async {
          await _authRepository.signOut();
          emit(const AuthState.unauthenticated());
        },
      );
    });
    _userChangesSubscription =
        _authRepository.onUserChanged.listen((optionUser) {
      final user = optionUser.getOrElse(() => null);
      if (user?.emailVerified == false) {
        return;
      } else {
        add(const AuthEvent.authCheckRequested());
      }
    });
  }

  final AuthRepository _authRepository;
  late StreamSubscription _userChangesSubscription;

  @override
  Future<void> close() {
    _userChangesSubscription.cancel();
    return super.close();
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
