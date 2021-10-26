import 'package:simple_todo_app/auth/domain/auth_failure.dart';
//
// enum FirebaseExceptionCode {
//   invalidEmail,
//   userDisabled,
//   userNotFound,
//   wrongPassword,
//   accountExistsWithDifferentCredential,
//   invalidCredential,
//   operationNotAllowed,
//   invalidVerificationCode,
//   verifyEmail,
//   emailAlreadyInUse,
//   weakPassword,
// }

extension FirebaseExceptionX on String {
  AuthFailure firebaseErrorCodeToFailure() {
    switch (this) {
      case 'invalid-email':
        return const AuthFailure.serverInvalidEmail();
      case 'user-not-found':
        return const AuthFailure.serverUserNotFound();
      case 'wrong-password':
        return const AuthFailure.serverWrongEmailAndPasswordCombination();
      case 'invalid-credential':
        return const AuthFailure.serverWrongEmailAndPasswordCombination();
      case 'email-already-in-use':
        return const AuthFailure.serverEmailAlreadyInUse();
      case 'user-disabled':
      case 'verifyEmail':
      case 'weak-password':
      case 'operation-not-allowed':
      case 'account-exists-with-different-credential':
      case 'invalid-verification-code':
      default:
        return AuthFailure.serverUnknownError(errorMessage: this);
    }
  }
}
