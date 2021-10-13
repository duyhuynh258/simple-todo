import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart' as domain;
import 'package:simple_todo_app/task/domain/unique_id.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

class TaskRepositoryMock extends Mock implements TaskRepository {}

void main() {
  late TaskRepositoryMock taskRepositoryMock;
  late domain.Task uncompletedTask;
  late domain.Task completedTask;
  setUp(() {
    taskRepositoryMock = TaskRepositoryMock();
    uncompletedTask = domain.Task(
      id: UniqueId().value,
      body: 'This is uncompleted task',
      isSynchronized: false,
      isCompleted: false,
    );

    completedTask = domain.Task(
      id: UniqueId().value,
      body: 'This is uncompleted task',
      isSynchronized: false,
      isCompleted: true,
    );
    when(() => taskRepositoryMock.getAllTasks())
        .thenAnswer((invocation) => Future.value(right(PaginatedList.empty())));
  });

  group('TaskWatcherBloc', () {
    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits empty task when create new',
      build: () => TaskWatcherBloc(taskRepositoryMock),
      act: (bloc) => bloc.add(const TaskWatcherEvent.createdDraftTask()),
      expect: () => [
        isA<TaskWatcherState>()
            .having((state) => state.isInProgress, 'Tasks is fetching', true),
        isA<TaskWatcherState>()
            .having((state) => state.isInProgress, 'Tasks is loaded', false),
        isA<TaskWatcherState>().having((state) => state.allTasks.first.isEmpty,
            'Created task have empty body', true)
      ],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'empty tasks will not be saved and will be remove when end editing',
      build: () => TaskWatcherBloc(taskRepositoryMock,
          initialState: TaskWatcherState(
            isInProgress: false,
            isNextCompletedTasksAvailable: false,
            isNextUnCompletedTasksAvailable: false,
            allTasks: [domain.Task.empty()],
          )),
      act: (bloc) {
        final domain.Task draftTask = bloc.state.allTasks.first;
        bloc.add(TaskWatcherEvent.taskEndEdited(task: draftTask));
      },
      expect: () => [
        isA<TaskWatcherState>().having(
            (state) => state.allTasks.isEmpty, 'List tasks is empty', true)
      ],
      verify: (bloc) =>
          verifyNever(() => taskRepositoryMock.upsertTasks(any())),
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'can only create one empty task at one time',
      build: () => TaskWatcherBloc(taskRepositoryMock,
          initialState: TaskWatcherState(
            isInProgress: false,
            isNextCompletedTasksAvailable: false,
            isNextUnCompletedTasksAvailable: false,
            allTasks: [domain.Task.empty()],
          )),
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
        when(() => taskRepositoryMock.upsertTasks(any()))
            .thenAnswer((invocation) {
          final dynamic args = invocation.positionalArguments.first;
          if (args is List<domain.Task>) {
            final domain.Task savedTask = args.first;
            expect(savedTask.id, uncompletedTask.id);
            expect(savedTask.isCompleted, true);
          }

          return Future.value(right(unit));
        });
      },
      build: () => TaskWatcherBloc(taskRepositoryMock,
          initialState: TaskWatcherState(
            isInProgress: false,
            isNextCompletedTasksAvailable: false,
            isNextUnCompletedTasksAvailable: false,
            allTasks: [uncompletedTask],
          )),
      act: (bloc) => bloc.add(TaskWatcherEvent.taskEndEdited(
          task: uncompletedTask.copyWith(isCompleted: true))),
      expect: () => [
        isA<TaskWatcherState>().having((state) => state.completedTasks.first.id,
            'List tasks is has new completed task', uncompletedTask.id)
      ],
      verify: (_) =>
          verify(() => taskRepositoryMock.upsertTasks(any())).called(1),
    );
  });
}
