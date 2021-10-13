import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart' as domain;
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

class TaskRepositoryMock extends Mock implements TaskRepository {}

void main() {
  late TaskRepositoryMock taskRepositoryMock;
  setUp(() {
    taskRepositoryMock = TaskRepositoryMock();
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
  });
}
