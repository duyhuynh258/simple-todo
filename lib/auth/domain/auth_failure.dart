import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverUnknownError({String? errorMessage}) =
      _ServerUnknownError;
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverUserNotFound() = _ServerUserNotFound;
  const factory AuthFailure.serverInvalidEmail() = _ServerInvalidEmail;
  const factory AuthFailure.serverEmailNotVerified() = _ServerEmailNotVerified;
  const factory AuthFailure.serverEmailAlreadyInUse() =
      _ServerEmailAlreadyInUse;
  const factory AuthFailure.serverWrongEmailAndPasswordCombination() =
      _ServerWrongEmailAndPasswordCombination;
}
