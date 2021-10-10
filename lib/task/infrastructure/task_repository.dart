import 'package:dartz/dartz.dart' as dartz;
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/domain/task_failure.dart';

class TaskRepository {
  const TaskRepository(this.user);

  final User user;

  Stream<dartz.Either<TaskFailure, List<Task>>> watchAll() async* {}

  Stream<dartz.Either<TaskFailure, List<Task>>> watchUncompleted() async* {}

  Future<dartz.Either<TaskFailure, dartz.Unit>> save(Task task) async {}
}
