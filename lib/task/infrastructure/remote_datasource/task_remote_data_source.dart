import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/core/infrastructure/firebase_helper.dart';
import 'package:simple_todo_app/task/domain/task.dart';

class TaskRemoteDataSource {
  const TaskRemoteDataSource(this._firestore, this.user);

  final User user;
  final FirebaseFirestore _firestore;

  Future<PaginatedList<Task>> syncToRemote(List<Task> tasks) async {}
}
