import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:simple_todo_app/auth/domain/user.dart';

class FirebaseUserMapper {
  User? toDomain(firebase.User? _) {
    final email = _?.email;

    if (email == null || _ == null) {
      return null;
    }

    return User(
      id: _.uid,
      name: _.displayName ?? email.split('@').first,
      emailAddress: email,
    );
  }
}
