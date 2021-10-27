import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/auth/presentation/sign_in_page.dart';
import 'package:simple_todo_app/core/infrastructure/firebase_helper.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/presentation/app/app_initializer.dart';

import '../../helpers/helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    // registerFallbackValue(FakeAuthEvent());
  });

  group('Test form input', () {
    late AuthRepository authRepositoryMock;
    late AppInitializer appInitializerMock;
    late MockNavigatorObserver mockNavigatorObserver;
    late SembastDatabase sembastDatabaseMock;
    late FirebaseFirestore firebaseFirestoreMock;
    setUp(() {
      authRepositoryMock = AuthRepositoryMock();
      appInitializerMock = AppInitializer(customSystemChromeInit: () {});
      mockNavigatorObserver = MockNavigatorObserver();
      sembastDatabaseMock = SembastDatabaseMock();
      firebaseFirestoreMock = FirebaseFirestoreMock();
      when(() => sembastDatabaseMock.init())
          .thenAnswer((invocation) => Future.value(null));
      when(() => authRepositoryMock.onUserChanged).thenAnswer(
        (invocation) => Stream.value(dartz.optionOf(null)),
      );
      when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
        (invocation) => Future.value(dartz.optionOf(null)),
      );
    });

    testWidgets('render sign_in_page', (tester) async {
      await tester.pumpApp(
        const SignInPage(),
        authRepositoryMock: authRepositoryMock,
        firebaseFirestoreMock: firebaseFirestoreMock,
      );
      expect(find.byType(SignInPage), findsOneWidget);
    });

    testWidgets('show text field error label if invalid input email',
        (tester) async {
      // region assign
      await tester.pumpApp(
        const SignInPage(),
        authRepositoryMock: authRepositoryMock,
        appInitializer: appInitializerMock,
        sembastDatabaseMock: sembastDatabaseMock,
        firebaseFirestoreMock: firebaseFirestoreMock,
      );
      // endregion

      // region act

      // Input invalid email
      await tester.enterText(
        find.byType(TextFormField).first,
        'invalid.email.com',
      );
      await tester.pump();
      // Tap the add button.
      await tester.tap(find.textContaining('Login').last);
      // Rebuild the widget after the state has changed.
      await tester.pump();

      // endregion

      // region assert
      expect(find.text('Invalid email'), findsOneWidget);
      // endregion
    });
  });
}
