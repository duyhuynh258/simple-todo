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

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getAllTasks(
      {bool nextPage = false, int loadedItemsCount = 0}) async {
    try {
      final page = await _taskRemoteDataSource.getAllTasks(
          nextPage: nextPage, loadedItemsCount: loadedItemsCount);
      return right(page);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(const TaskFailure.noInternet()),
        insufficientPermissions: () => left(
          const TaskFailure.insufficientPermissions(),
        ),
        orElse: () async {
          final tasksPage = await _taskLocalDatasource.getAllTasks(
              nextPage: nextPage, loadedItemsCount: loadedItemsCount);
          return right(tasksPage);
        },
      );
    } on TaskLocalDataSourceException catch (e) {
      return left(const TaskFailure.localStorage());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, PaginatedList<domain.Task>>> getUncompletedTasks(
      {bool nextPage = false, int loadedItemsCount = 0}) async {
    try {
      final page = await _taskRemoteDataSource.getUncompletedTasks(
          nextPage: nextPage, loadedItemsCount: loadedItemsCount);
      return right(page);
    } on TaskRemoteDataSourceException catch (e) {
      return e.maybeWhen(
        noInternet: () => left(const TaskFailure.noInternet()),
        insufficientPermissions: () => left(
          const TaskFailure.insufficientPermissions(),
        ),
        orElse: () async {
          final tasksPage = await _taskLocalDatasource.getUncompletedTasks(
              nextPage: nextPage, loadedItemsCount: loadedItemsCount);
          return right(tasksPage);
        },
      );
    } on TaskLocalDataSourceException catch (e) {
      return left(const TaskFailure.localStorage());
    } catch (e) {
      return left(const TaskFailure.unexpected());
    }
  }

  Future<Either<TaskFailure, Unit>> sync(List<domain.Task> task) async {}
}
