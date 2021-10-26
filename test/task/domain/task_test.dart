import 'package:flutter_test/flutter_test.dart';
import 'package:simple_todo_app/task/domain/task.dart';

void main() {
  test('Draft task should have isDraft equal "true"', () {
    // assign
    final Task createdTask = Task.draft();

    // assert
    expect(createdTask.isDraft, true);
  });

  test('Completed task should have isDraft equal "false"', () {
    // assign
    final Task createdTask = Task.draft();

    // act
    final resultTask = createdTask.completed();

    // assert
    expect(resultTask.isDraft, false);
  });

  test('Existing tasks should have isDraft equal "false"', () {
    // assign
    final Task existedTask = Task.fromData(
      id: 'exist-task-id',
      body: 'This is exist task',
      isSynchronized: false,
      isCompleted: false,
    );

    // assert
    expect(existedTask.isDraft, false);
  });
}
