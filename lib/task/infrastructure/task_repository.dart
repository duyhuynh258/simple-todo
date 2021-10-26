import 'package:dartz/dartz.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/domain/task.dart' as domain;
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/exceptions.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_sembast_dto.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';

class TaskRepository {
  const TaskRepository(this._taskRemoteDataSource, this._taskLocalDatasource);

  final TaskRemoteDataSource _taskRemoteDataSource;
  final TaskLocalDatasource _taskLocalDatasource;

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getAllTasks({
    bool nextPage = false,
  }) async {
    try {
      final tasksPage =
          await _taskLocalDatasource.getAllTasks(nextPage: nextPage);
      return right(tasksPage);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.noInternet(),
          ),
        ),
        insufficientPermissions: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.insufficientPermissions(),
          ),
        ),
        orElse: () async {
          return left(
            const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.unexpected(),
            ),
          );
        },
      );
    } on TaskLocalDataSourceException catch (_) {
      return left(const TaskFailure.localFailed());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getUncompletedTasks({
    bool nextPage = false,
    int loadedItemsCount = 0,
  }) async {
    try {
      final tasksPage =
          await _taskLocalDatasource.getUncompletedTasks(nextPage: nextPage);
      return right(tasksPage);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.noInternet(),
          ),
        ),
        insufficientPermissions: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.insufficientPermissions(),
          ),
        ),
        orElse: () async {
          return left(
            const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.unexpected(),
            ),
          );
        },
      );
    } on TaskLocalDataSourceException catch (_) {
      return left(const TaskFailure.localFailed());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, Unit>> upsertTasks(List<domain.Task> tasks) async {
    try {
      await _taskLocalDatasource.upsertTasks(TaskSembastDTO.fromDomains(tasks));
      return right(unit);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.noInternet(),
          ),
        ),
        insufficientPermissions: () => left(
          const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.insufficientPermissions(),
          ),
        ),
        orElse: () async {
          return left(
            const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.unexpected(),
            ),
          );
        },
      );
    } on TaskLocalDataSourceException catch (_) {
      return left(const TaskFailure.localFailed());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, Unit>> deleteTasks(List<domain.Task> task) async {
    // TODO(steve): implement
    return right(unit);
  }

  Future<Either<TaskFailure, Unit>> syncToRemote(List<domain.Task> task) async {
    // TODO(steve): implement
    return right(unit);
  }

  Future<Either<TaskFailure, Unit>> syncFromRemote(
    List<domain.Task> task,
  ) async {
    // TODO(steve): implement
    return right(unit);
  }

  Future<Either<TaskFailure, Unit>> clearLocalTasks() async {
    try {
      await _taskLocalDatasource.clearTasks();
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.localFailed());
    }
  }
}
