import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';

// class MockAuthBloc extends MockBloc<AuthBloc, AuthState> implements AuthBloc {
// }

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });
  // group('TaskHomePage', () {
  //   testWidgets('renders TodoTasksListPage', (tester) async {
  //     await tester.pumpApp(const TaskHomePage(),
  //         authRepositoryMock: mockAuthRepository);
  //     await tester.pump(const Duration(seconds: 3));
  //     final findWidget = find.byType(TaskHomePage);
  //     expect(findWidget, findsOneWidget);
  //   });
  // });
}
