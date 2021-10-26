import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';

import '../../../helpers/helpers.dart';

void main() {
  late TaskRepositoryMock taskRepositoryMock;
  late Task uncompletedTask;
  late Task resultCompletedTask;
  setUp(() {
    taskRepositoryMock = TaskRepositoryMock();
    uncompletedTask = Task.fromData(
      id: 'uncompleted-task-unique-id',
      body: 'This is uncompleted task',
      isSynchronized: false,
      isCompleted: false,
    );

    resultCompletedTask = uncompletedTask.copyWith(isCompleted: true);

    when(() => taskRepositoryMock.getAllTasks()).thenAnswer(
        (invocation) => Future.value(dartz.right(PaginatedList.empty())));
  });

  group('TaskWatcherBloc', () {
    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits state with draft task',
      build: () => TaskWatcherBloc(taskRepositoryMock),
      act: (bloc) => bloc.add(const TaskWatcherEvent.createdDraftTask()),
      expect: () => [
        isA<TaskWatcherState>()
            .having(
              (state) => state.allTasks.first.isDraft,
              'Created task have isDraft field equal "true"',
              true,
            )
            .having(
              (state) => state.allTasks.length,
              'List task has one draft task',
              1,
            ),
      ],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'draft tasks will not be saved and will be remove when end editing',
      build: () => TaskWatcherBloc(
        taskRepositoryMock,
      ),
      seed: () => TaskWatcherState(
        isInProgress: false,
        isNextCompletedTasksAvailable: false,
        isNextUnCompletedTasksAvailable: false,
        allTasks: [Task.draft()],
      ),
      act: (bloc) {
        final Task draftTask = bloc.state.allTasks.first;
        bloc.add(TaskWatcherEvent.taskEndEdited(task: draftTask));
      },
      expect: () => [
        isA<TaskWatcherState>().having(
          (state) => state.allTasks.isEmpty,
          'List tasks is empty',
          true,
        )
      ],
      verify: (bloc) =>
          verifyNever(() => taskRepositoryMock.upsertTasks(any())),
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'can only create one empty task at one time',
      build: () => TaskWatcherBloc(
        taskRepositoryMock,
      ),
      seed: () => TaskWatcherState(
        isInProgress: false,
        isNextCompletedTasksAvailable: false,
        isNextUnCompletedTasksAvailable: false,
        allTasks: [Task.draft()],
      ),
      act: (bloc) => bloc.add(const TaskWatcherEvent.createdDraftTask()),
      expect: () => <TaskWatcherState>[],
      verify: (bloc) => allOf([
        verifyNever(() => taskRepositoryMock.upsertTasks(any())),
        expectLater(bloc.state.allTasks.length, 1),
      ]),
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'after complete task, right value is store in bloc, right value is saved via repository',
      setUp: () {
        when(() => taskRepositoryMock.upsertTasks([resultCompletedTask]))
            .thenAnswer((invocation) {
          final dynamic args = invocation.positionalArguments.first;
          if (args is List<Task>) {
            final Task savedTask = args.first;
            expect(savedTask.id, uncompletedTask.id);
            expect(savedTask.isCompleted, true);
          }

          return Future.value(dartz.right(dartz.unit));
        });
      },
      build: () => TaskWatcherBloc(
        taskRepositoryMock,
      ),
      seed: () => TaskWatcherState(
        isInProgress: false,
        isNextCompletedTasksAvailable: false,
        isNextUnCompletedTasksAvailable: false,
        allTasks: [uncompletedTask],
      ),
      act: (bloc) => bloc.add(
        TaskWatcherEvent.taskEndEdited(
          task: resultCompletedTask,
        ),
      ),
      expect: () => [
        isA<TaskWatcherState>().having(
          (state) => state.completedTasks.first.id,
          'List tasks is has new completed task',
          uncompletedTask.id,
        )
      ],
      verify: (_) =>
          verify(() => taskRepositoryMock.upsertTasks(any())).called(1),
    );
  });
}
