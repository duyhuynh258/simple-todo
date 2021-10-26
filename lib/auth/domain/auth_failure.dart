import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError({String? errorMessage}) = _ServerError;
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.emailNotVerified() = _EmailNotVerified;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.wrongEmailAndPasswordCombination() =
      _WrongEmailAndPasswordCombination;
}
