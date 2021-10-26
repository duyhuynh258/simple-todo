import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Auth flow', () {});
}

// import 'package:dartz/dartz.dart' as dartz;
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
// import 'package:simple_todo_app/auth/presentation/sign_in_page.dart';
// import 'package:simple_todo_app/core/presentation/app/app_widget.dart';
// import 'package:simple_todo_app/splash/presentation/splash_page.dart';
//
// import 'helpers/auth_mocks.dart';
// import 'helpers/helpers.dart';
// import 'helpers/pump_app.dart';
//
// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUpAll(() {
//     registerFallbackValue(FakeAuthEvent());
//     registerFallbackValue(FakeAuthState());
//     registerFallbackValue(FakeRoute());
//   });
//   // setUp(() {
//   //   mockAuthBloc = MockAuthBloc();
//   // });
//
//   group('Auth flow', () {
//     late AuthRepository authRepositoryMock;
//     late AppInitializeFunction appInitializeFunction;
//     late MockNavigatorObserver mockNavigatorObserver;
//     setUp(() {
//       authRepositoryMock = AuthRepositoryMock();
//       appInitializeFunction = initializeApp;
//       mockNavigatorObserver = MockNavigatorObserver();
//     });
//
//     testWidgets('displays a SplashPage', (tester) async {
//       await tester.pumpFullApp(appInitializeFunction: appInitializeFunction);
//       expect(find.byType(SplashPage), findsOneWidget);
//     });
//     testWidgets('displays a SignInPage if not signed in.', (tester) async {
//       // assign
//       when(() => authRepositoryMock.onUserChanged).thenAnswer(
//         (invocation) => Stream.value(dartz.optionOf(null)),
//       );
//       when(() => authRepositoryMock.getSignedInUser()).thenAnswer(
//         (invocation) => Future.value(dartz.optionOf(null)),
//       );
//       when(() => mockNavigatorObserver.didPush(any(), any())).thenReturn(null);
//       // final authBloc = AuthBloc(authRepositoryMock);
//
//       // act
//       await tester.pumpFullApp(
//         authRepositoryMock: authRepositoryMock,
//         // authBlocMock: authBloc,
//         // appInitializeFunction: appInitializeFunction,
//         mockNavigatorObserver: mockNavigatorObserver,
//       );
//       // authBloc.add(const AuthEvent.authCheckRequested());
//       await tester.pump(const Duration(milliseconds: 300));
//       // assert
//       /// Verify that a push event happened
//       // verify(() => mockNavigatorObserver.didPush(any(), any())).called(1);
//       expect(find.byType(SignInPage), findsOneWidget);
//     });
//   });
// }
