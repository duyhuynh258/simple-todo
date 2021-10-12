import 'package:dartz/dartz.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/domain/task.dart' as domain;
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/exceptions.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';

class TaskRepository {
  const TaskRepository(
      this.user, this._taskRemoteDataSource, this._taskLocalDatasource);

  final TaskRemoteDataSource _taskRemoteDataSource;
  final TaskLocalDatasource _taskLocalDatasource;
  final User user;

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getAllTasks({
    bool nextPage = false,
  }) async {
    try {
      final tasksPage =
          await _taskLocalDatasource.getAllTasks(nextPage: nextPage);
      return right(tasksPage);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.noInternet())),
        insufficientPermissions: () => left(
          const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.insufficientPermissions()),
        ),
        orElse: () async {
          return left(const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.unexpected()));
        },
      );
    } on TaskLocalDataSourceException catch (e) {
      return left(const TaskFailure.localFailed());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getUncompletedTasks(
      {bool nextPage = false, int loadedItemsCount = 0}) async {
    try {
      final tasksPage =
          await _taskLocalDatasource.getUncompletedTasks(nextPage: nextPage);
      return right(tasksPage);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(const TaskFailure.localSuccessButSyncFailed(
            syncFailure: SyncFailure.noInternet())),
        insufficientPermissions: () => left(
          const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.insufficientPermissions()),
        ),
        orElse: () async {
          return left(const TaskFailure.localSuccessButSyncFailed(
              syncFailure: SyncFailure.unexpected()));
        },
      );
    } on TaskLocalDataSourceException catch (e) {
      return left(const TaskFailure.localFailed());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, Unit>> saveTasks(List<domain.Task> task) async {}

  Future<Either<TaskFailure, Unit>> syncToRemote(
      List<domain.Task> task) async {}

  Future<Either<TaskFailure, Unit>> syncFromRemote(
      List<domain.Task> task) async {}
}
