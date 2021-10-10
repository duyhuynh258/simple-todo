import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/auth/domain/auth_failure.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

part 'sign_up_bloc.freezed.dart';

//State
@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.success() = _Success;

  const factory SignUpState.inProgress() = _InProgress;

  const factory SignUpState.failure({
    required AuthFailure failure,
  }) = _Failure;
}

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc(this._authRepository) : super(const SignUpState.initial());
  final AuthRepository _authRepository;

  //signUp user
  Future<void> signUpUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    //emitting signup progress state
    emit(const SignUpState.inProgress());
    final signUpFailureOrSuccess = await _authRepository
        .signUpUserWithEmailAndPassword(email: email, password: password);

    signUpFailureOrSuccess.fold((l) {
      //failure
      emit(SignUpState.failure(failure: l));
    }, (r) {
      //success
      emit(const SignUpState.success());
    });
  }
}
