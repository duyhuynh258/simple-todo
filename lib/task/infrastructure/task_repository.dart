import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/core/infrastructure/firebase_helper.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/task_dto.dart';

class TaskRepository {
  const TaskRepository(this._firestore, this.user);

  final FirebaseFirestore _firestore;
  final User user;

  Stream<dartz.Either<TaskFailure, List<Task>>> watchAll() async* {
    final userDoc = await _firestore.userDocument(user);
    yield* userDoc.taskCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => dartz.right<TaskFailure, List<Task>>(
            snapshot.docs
                .map((doc) => TaskDTO.fromFirestore(doc).toDomain())
                .toList(growable: false),
          ),
        )
        .onErrorReturnWith((e, s) {
      if (e is PlatformException &&
          (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        return dartz.left(const TaskFailure.insufficientPermissions());
      } else {
        // TODO: Log these unexpected errors everywhere
        return dartz.left(const TaskFailure.unexpected());
      }
    });
  }

  Stream<dartz.Either<TaskFailure, List<Task>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument(user);
    yield* userDoc.taskCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => TaskDTO.fromFirestore(doc).toDomain()),
        )
        .map(
          (tasks) => dartz.right<TaskFailure, List<Task>>(
            tasks
                .where((task) => task.isComplete == false)
                .toList(growable: false),
          ),
        )
        .onErrorReturnWith((e, s) {
      if (e is PlatformException &&
          (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        return dartz.left(const TaskFailure.insufficientPermissions());
      } else {
        return dartz.left(const TaskFailure.unexpected());
      }
    });
  }

  Future<dartz.Either<TaskFailure, dartz.Unit>> create(Task task) async {
    try {
      final userDoc = await _firestore.userDocument(user);
      final taskDTO = TaskDTO.fromDomain(task);

      await userDoc.taskCollection.doc(taskDTO.id).set(taskDTO.toJson());

      return dartz.right(dartz.unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK,
      // experiment in the debugger to find out about them.
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return dartz.left(const TaskFailure.insufficientPermissions());
      } else {
        return dartz.left(const TaskFailure.unexpected());
      }
    }
  }

  Future<dartz.Either<TaskFailure, dartz.Unit>> update(Task task) async {
    try {
      final userDoc = await _firestore.userDocument(user);
      final taskDTO = TaskDTO.fromDomain(task);

      await userDoc.taskCollection.doc(taskDTO.id).update(taskDTO.toJson());

      return dartz.right(dartz.unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK,
      // experience in the debugger to find out about them.
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return dartz.left(const TaskFailure.insufficientPermissions());
      } else if (e.message?.contains('NOT_FOUND') ?? false) {
        return dartz.left(const TaskFailure.unableToUpdate());
      } else {
        return dartz.left(const TaskFailure.unexpected());
      }
    }
  }

  Future<dartz.Either<TaskFailure, dartz.Unit>> delete(Task task) async {
    try {
      final userDoc = await _firestore.userDocument(user);
      final taskId = task.id;

      await userDoc.taskCollection.doc(taskId).delete();

      return dartz.right(dartz.unit);
    } on PlatformException catch (e) {
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return dartz.left(const TaskFailure.insufficientPermissions());
      } else {
        return dartz.left(const TaskFailure.unexpected());
      }
    }
  }
}
