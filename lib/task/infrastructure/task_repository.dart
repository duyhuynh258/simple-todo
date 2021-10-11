import 'package:dartz/dartz.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/task/domain/task.dart' as domain;
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';

class TaskRepository {
  const TaskRepository(
      this.user, this._taskRemoteDataSource, this._taskLocalDatasource);

  final TaskRemoteDataSource _taskRemoteDataSource;
  final TaskLocalDatasource _taskLocalDatasource;
  final User user;

  Stream<Either<TaskFailure, List<Task>>> watchAll() async* {}

  Stream<Either<TaskFailure, List<Task>>> watchUncompleted() async* {}

  Future<Either<TaskFailure, Unit>> sync(List<domain.Task> task) async {}
}
