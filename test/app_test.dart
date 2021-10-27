import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/auth/presentation/sign_in_page.dart';
import 'package:simple_todo_app/core/infrastructure/firebase_helper.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/presentation/app/app_initializer.dart';
import 'package:simple_todo_app/splash/presentation/splash_page.dart';
import 'package:simple_todo_app/task/presentation/task_home_page.dart';

import 'auth/application/auth_bloc_test.dart';
import 'helpers/auth_mocks.dart';
import 'helpers/helpers.dart';
import 'helpers/pump_app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    registerFallbackValue(FakeAuthEvent());
    registerFallbackValue(FakeAuthState());
    registerFallbackValue(FakeRoute());
  });
  // setUp(() {
  //   mockAuthBloc = MockAuthBloc();
  // });

  group('User changes flow', () {
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
    });

    testWidgets('displays a SplashPage', (tester) async {
      await tester.pumpFullApp();
      expect(find.byType(SplashPage), findsOneWidget);
    });
    testWidgets('render sign in page if not signed in', (tester) async {
      // assign
      when(() => authRepositoryMock.onUserChanged).thenAnswer(
        (invocation) => Stream.value(dartz.optionOf(null)),
      );
      when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
        (invocation) => Future.value(dartz.optionOf(null)),
      );

      // act
      await tester.pumpFullApp(
        authRepositoryMock: authRepositoryMock,
        appInitializer: appInitializerMock,
        sembastDatabaseMock: sembastDatabaseMock,
      );
      expect(find.byType(SplashPage), findsOneWidget);
      await tester.pumpAndSettle();

      // assert
      expect(find.byType(SignInPage), findsOneWidget);
    });

    testWidgets('render task home page if signed in', (tester) async {
      // assign
      when(() => authRepositoryMock.onUserChanged).thenAnswer(
        (invocation) => Stream.value(dartz.optionOf(verifiedUser)),
      );
      when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
        (invocation) => Future.value(dartz.optionOf(verifiedUser)),
      );

      // act
      await tester.pumpFullApp(
        authRepositoryMock: authRepositoryMock,
        appInitializer: appInitializerMock,
        sembastDatabaseMock: sembastDatabaseMock,
        firebaseFirestoreMock: firebaseFirestoreMock,
      );
      expect(find.byType(SplashPage), findsOneWidget);
      await tester.pumpAndSettle();

      // assert
      expect(find.byType(TaskHomePageWithProvider), findsOneWidget);
    });
  });
}
