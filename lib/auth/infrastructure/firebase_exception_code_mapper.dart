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
        return const AuthFailure.invalidEmail();
      case 'user-not-found':
        return const AuthFailure.userNotFound();
      case 'wrong-password':
        return const AuthFailure.wrongEmailAndPasswordCombination();
      case 'invalid-credential':
        return const AuthFailure.wrongEmailAndPasswordCombination();
      case 'email-already-in-use':
        return const AuthFailure.emailAlreadyInUse();
      case 'user-disabled':
      case 'verifyEmail':
      case 'weak-password':
      case 'operation-not-allowed':
      case 'account-exists-with-different-credential':
      case 'invalid-verification-code':
      default:
        return AuthFailure.serverError(errorMessage: this);
    }
  }
}
