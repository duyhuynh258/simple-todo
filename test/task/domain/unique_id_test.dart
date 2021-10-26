import 'package:flutter_test/flutter_test.dart';
import 'package:simple_todo_app/task/domain/unique_id.dart';

void main() {
  test('Unique id generated should have isNewlyCreated equal "true"', () {
    // assign
    final UniqueId generatedUniqueId = UniqueId();

    // assert
    expect(generatedUniqueId.isNewlyCreated, true);
  });

  test(
      'Unique id from existing unique string should have isNewlyCreated equal "false"',
      () {
    // assign
    const UniqueId generatedUniqueId = UniqueId.fromUUID('existing-uuid');

    // assert
    expect(generatedUniqueId.isNewlyCreated, false);
  });
}
