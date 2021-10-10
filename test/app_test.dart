import 'package:flutter_test/flutter_test.dart';
import 'package:simple_todo_app/core/presentation/app/app_widget.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const AppWidget());
      // expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
