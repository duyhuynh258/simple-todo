import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/domain/task_failure.dart';

import '../../../helpers/helpers.dart';

void main() {
  late TaskRepositoryMock taskRepositoryMock;
  late Task uncompletedTask;
  late Task newlyCreatedTask;
  late Task resultCompletedNewlyTask;
  late Task resultCompletedExistingTask;
  late Task resultUnCompletedExistingTask;
  late Task completedTask;
  late MockOnTaskItemActionCallback mockOnTaskItemActionCallback;
  setUp(() {
    taskRepositoryMock = TaskRepositoryMock();
    newlyCreatedTask =
        Task.draft().copyWith(body: 'This is a newly created task');
    uncompletedTask = Task.fromData(
      id: 'uncompleted-task-unique-id',
      body: 'This is an uncompleted task',
      isSynchronized: false,
      isCompleted: false,
    );

    resultCompletedExistingTask = uncompletedTask.completed();
    resultCompletedNewlyTask = newlyCreatedTask.completed();

    completedTask = Task.fromData(
      id: 'completed-task-unique-id',
      body: 'This is a completed task',
      isSynchronized: false,
      isCompleted: false,
    );
    resultUnCompletedExistingTask = completedTask.uncompleted();
    mockOnTaskItemActionCallback = MockOnTaskItemActionCallback();
    when(() => taskRepositoryMock.getAllTasks()).thenAnswer(
      (invocation) => Future.value(dartz.right(PaginatedList.empty())),
    );
    when(() => mockOnTaskItemActionCallback(any())).thenReturn(null);
  });

  group('TaskItemBloc', () {
    blocTest<TaskItemBloc, TaskItemState>(
      'Emit empty task if not given when creating TaskItemBloc',
      build: () => TaskItemBloc(taskRepositoryMock),
      verify: (b) => expect(
        b.state,
        isA<TaskItemState>().having(
          (p0) => p0.task.isDraft,
          'Default task of TaskItemBloc is a draft task',
          true,
        ),
      ),
    );

    blocTest<TaskItemBloc, TaskItemState>(
      'Emit same task as given one when instantiating TaskItemBloc',
      build: () => TaskItemBloc(taskRepositoryMock, task: completedTask),
      verify: (b) => expect(
        b.state,
        isA<TaskItemState>().having(
          (p0) => p0.task,
          'Task as same as task after initialization TaskItemBloc',
          completedTask,
        ),
      ),
    );

    group('Complete task action', () {
      blocTest<TaskItemBloc, TaskItemState>(
        'Emit task as completed when complete task successfully',
        build: () => TaskItemBloc(taskRepositoryMock, task: newlyCreatedTask),
        setUp: () {
          when(
            () => taskRepositoryMock.upsertTasks(any<List<Task>>()),
          ).thenAnswer(
            (_) => Future.value(dartz.right(dartz.unit)),
          );
        },
        act: (b) => b.add(const TaskItemEvent.completed()),
        expect: () => [
          isA<TaskItemState>()
              .having(
                (p0) => p0.task.isCompleted,
                'Task has isCompleted field equal "true"',
                true,
              )
              .having(
                (p1) => p1.task.id.value,
                'Task id same as origin task id',
                resultCompletedNewlyTask.id.value,
              )
              .having(
                (p1) => p1.task.isDraft,
                'Task is not a draft anymore',
                false,
              )
        ],
      );

      blocTest<TaskItemBloc, TaskItemState>(
        'Emit failure and keep current task state when complete task failed.',
        build: () => TaskItemBloc(
          taskRepositoryMock,
          task: uncompletedTask,
          onAction: mockOnTaskItemActionCallback,
        ),
        setUp: () {
          when(
            () => taskRepositoryMock.upsertTasks(any<List<Task>>()),
          ).thenAnswer(
            (_) => Future.value(dartz.left(const TaskFailure.unexpected())),
          );
        },
        act: (b) => b.add(const TaskItemEvent.completed()),
        verify: (b) => verifyNever(() => mockOnTaskItemActionCallback(any())),
        expect: () => [
          isA<TaskItemState>()
              .having(
                (p0) => p0.task,
                'task is not changed',
                uncompletedTask,
              )
              .having(
                (p1) => p1.failure,
                'failure emitted',
                isA<TaskFailure>(),
              )
        ],
      );
    });

    group('UnComplete task action', () {
      blocTest<TaskItemBloc, TaskItemState>(
        'Emit task as uncompleted when un complete task successfully',
        build: () => TaskItemBloc(taskRepositoryMock, task: completedTask),
        setUp: () {
          when(
            () => taskRepositoryMock.upsertTasks(any<List<Task>>()),
          ).thenAnswer(
            (_) => Future.value(dartz.right(dartz.unit)),
          );
        },
        act: (b) => b.add(const TaskItemEvent.unCompleted()),
        expect: () => [
          isA<TaskItemState>()
              .having(
                (p0) => p0.task.isCompleted,
                'Task has isCompleted field equal "false"',
                false,
              )
              .having(
                (p1) => p1.task.id.value,
                'Task id same as origin task id',
                resultUnCompletedExistingTask.id.value,
              )
              .having(
                (p1) => p1.task.isDraft,
                'Task is not a draft',
                false,
              )
        ],
      );

      blocTest<TaskItemBloc, TaskItemState>(
        'Emit failure and keep current task state when un complete task failed.',
        build: () => TaskItemBloc(
          taskRepositoryMock,
          task: completedTask,
          onAction: mockOnTaskItemActionCallback,
        ),
        setUp: () {
          when(
            () => taskRepositoryMock.upsertTasks(any<List<Task>>()),
          ).thenAnswer(
            (_) => Future.value(dartz.left(const TaskFailure.unexpected())),
          );
        },
        act: (b) => b.add(const TaskItemEvent.unCompleted()),
        verify: (b) => verifyNever(() => mockOnTaskItemActionCallback(any())),
        expect: () => [
          isA<TaskItemState>()
              .having(
                (p0) => p0.task,
                'task is not changed',
                completedTask,
              )
              .having(
                (p1) => p1.failure,
                'failure emitted',
                isA<TaskFailure>(),
              )
        ],
      );
    });
  });
}
