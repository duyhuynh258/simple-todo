import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/shared/constants.dart';
import 'package:simple_todo_app/task/domain/task.dart';

class TaskLocalDatasource {
  TaskLocalDatasource(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tasksStore);

  Stream<List<Task>> watchAll() async* {
    _store
        .query(
            finder: Finder(sortOrders: [SortOrder('serverTimeStamp', false)]))
        .onSnapshot(_sembastDatabase.instance);
    // final userDoc = await _firestore.userDocument(user);
    // yield* userDoc.taskCollection
    //     .orderBy('serverTimeStamp', descending: true)
    //     .snapshots()
    //     .map(
    //       (snapshot) => dartz.right<TaskFailure, List<Task>>(
    //         snapshot.docs
    //             .map((doc) => TaskDTO.fromFirestore(doc).toDomain())
    //             .toList(growable: false),
    //       ),
    //     )
    //     .onErrorReturnWith((e, s) {
    //   if (e is PlatformException &&
    //       (e.message?.contains('PERMISSION_DENIED') ?? false)) {
    //     return dartz.left(const TaskFailure.insufficientPermissions());
    //   } else {
    //     // TODO: Log these unexpected errors everywhere
    //     return dartz.left(const TaskFailure.unexpected());
    //   }
    // });
  }

  Stream<List<Task>> watchUncompleted() async* {
    // final userDoc = await _firestore.userDocument(user);
    // yield* userDoc.taskCollection
    //     .orderBy('serverTimeStamp', descending: true)
    //     .snapshots()
    //     .map(
    //       (snapshot) =>
    //           snapshot.docs.map((doc) => TaskDTO.fromFirestore(doc).toDomain()),
    //     )
    //     .map(
    //       (tasks) => dartz.right<TaskFailure, List<Task>>(
    //         tasks
    //             .where((task) => task.isComplete == false)
    //             .toList(growable: false),
    //       ),
    //     )
    //     .onErrorReturnWith((e, s) {
    //   if (e is PlatformException &&
    //       (e.message?.contains('PERMISSION_DENIED') ?? false)) {
    //     return dartz.left(const TaskFailure.insufficientPermissions());
    //   } else {
    //     return dartz.left(const TaskFailure.unexpected());
    //   }
    // });
  }

  Future<void> create(Task task) async {
    // try {
    //   final userDoc = await _firestore.userDocument(user);
    //   final taskDTO = TaskDTO.fromDomain(task);
    //
    //   await userDoc.taskCollection.doc(taskDTO.id).set(taskDTO.toJson());
    //
    //   return dartz.right(dartz.unit);
    // } on PlatformException catch (e) {
    //   // These error codes and messages aren't in the documentation AFAIK,
    //   // experiment in the debugger to find out about them.
    //   if (e.message?.contains('PERMISSION_DENIED') ?? false) {
    //     return dartz.left(const TaskFailure.insufficientPermissions());
    //   } else {
    //     return dartz.left(const TaskFailure.unexpected());
    //   }
    // }
  }

  Future<void> update(Task task) async {
    // try {
    //   final userDoc = await _firestore.userDocument(user);
    //   final taskDTO = TaskDTO.fromDomain(task);
    //
    //   await userDoc.taskCollection.doc(taskDTO.id).update(taskDTO.toJson());
    //
    //   return dartz.right(dartz.unit);
    // } on PlatformException catch (e) {
    //   // These error codes and messages aren't in the documentation AFAIK,
    //   // experience in the debugger to find out about them.
    //   if (e.message?.contains('PERMISSION_DENIED') ?? false) {
    //     return dartz.left(const TaskFailure.insufficientPermissions());
    //   } else if (e.message?.contains('NOT_FOUND') ?? false) {
    //     return dartz.left(const TaskFailure.unableToUpdate());
    //   } else {
    //     return dartz.left(const TaskFailure.unexpected());
    //   }
    // }
  }

  Future<void> delete(Task task) async {
    // try {
    //   final userDoc = await _firestore.userDocument(user);
    //   final taskId = task.id;
    //
    //   await userDoc.taskCollection.doc(taskId).delete();
    //
    //   return dartz.right(dartz.unit);
    // } on PlatformException catch (e) {
    //   if (e.message?.contains('PERMISSION_DENIED') ?? false) {
    //     return dartz.left(const TaskFailure.insufficientPermissions());
    //   } else {
    //     return dartz.left(const TaskFailure.unexpected());
    //   }
    // }
  }
}
