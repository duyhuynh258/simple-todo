import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/domain/user.dart';

extension UserInfoReader on BuildContext {
  User? get currentUser {
    final authBloc = read<AuthBloc>();
    return authBloc.state.maybeWhen(
      orElse: () {
        authBloc.add(const AuthEvent.authCheckRequested());
        return null;
      },
      authenticated: (user) {
        return user;
      },
    );
  }
}
