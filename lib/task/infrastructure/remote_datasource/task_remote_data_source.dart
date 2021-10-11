import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:simple_todo_app/auth/domain/user.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/core/infrastructure/firebase_helper.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/exceptions.dart';
import 'package:simple_todo_app/task/infrastructure/pagination_config.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_firestore_dto.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_paginated_firestore_query.dart';

class TaskRemoteDataSource {
  TaskRemoteDataSource(this._firestore, this.user) {
    watchAllPaginatedQuery = TaskPaginatedFirestoreQuery(
        numberOfItemToFetch:
            PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
        queryFuture: watchAllQuery);

    watchUncompletedPaginatedQuery = TaskPaginatedFirestoreQuery(
        numberOfItemToFetch:
            PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
        queryFuture: watchUnCompletedQuery);
  }

  final User user;
  final FirebaseFirestore _firestore;

  late TaskPaginatedFirestoreQuery watchAllPaginatedQuery;
  late TaskPaginatedFirestoreQuery watchUncompletedPaginatedQuery;

  Future<Query> get watchAllQuery =>
      _firestore.userDocument(user).then((userDoc) =>
          userDoc.taskCollection.orderBy('serverTimeStamp', descending: true));

  Future<Query> get watchUnCompletedQuery =>
      _firestore.userDocument(user).then((userDoc) => userDoc.taskCollection
          .orderBy('serverTimeStamp', descending: true)
          .where('isCompleted', isEqualTo: false));

  Future<PaginatedList<Task>> watchAll({bool nextPage = false}) async {
    if (nextPage == false) {
      watchAllPaginatedQuery = watchAllPaginatedQuery.copyWith(lastDoc: null);
    }
    try {
      final query = await watchAllPaginatedQuery.paginatedQuery;
      final snapshot = await query.get();

      final isNextPageAvailable =
          snapshot.docs.length > PaginationConfig.itemsPerPage;
      final List<QueryDocumentSnapshot> docs = snapshot.docs
        ..removeDocsOutOfPage();
      // Update last doc
      watchAllPaginatedQuery =
          watchAllPaginatedQuery.copyWith(lastDoc: docs.last);
      return PaginatedList(
        entities: docs
            .map((doc) => TaskFirestoreDTO.fromFirestore(doc).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      if (e is PlatformException &&
          (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        throw const TaskRemoteDataSourceException.insufficientPermissions();
      } else {
        throw const TaskRemoteDataSourceException.unexpected();
      }
    }
  }

  Future<PaginatedList<Task>> watchUncompleted({bool nextPage = false}) async {
    if (nextPage == false) {
      watchUncompletedPaginatedQuery =
          watchUncompletedPaginatedQuery.copyWith(lastDoc: null);
    }
    try {
      final query = await watchUncompletedPaginatedQuery.paginatedQuery;
      final snapshot = await query.get();

      final isNextPageAvailable =
          snapshot.docs.length > PaginationConfig.itemsPerPage;
      final List<QueryDocumentSnapshot> docs = snapshot.docs
        ..removeDocsOutOfPage();

      // Update last doc
      watchAllPaginatedQuery =
          watchAllPaginatedQuery.copyWith(lastDoc: docs.last);

      // Return page
      return PaginatedList(
        entities: docs
            .map((doc) => TaskFirestoreDTO.fromFirestore(doc).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      if (e is PlatformException &&
          (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        throw const TaskRemoteDataSourceException.insufficientPermissions();
      } else {
        throw const TaskRemoteDataSourceException.unexpected();
      }
    }
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

extension RemoveDocsOutOfPage on List<QueryDocumentSnapshot> {
  void removeDocsOutOfPage() {
    if (length <= PaginationConfig.itemsPerPage) {
      return;
    }
    final docsOutOfPageCount = length - PaginationConfig.itemsPerPage;
    for (int i = 0; i < docsOutOfPageCount; i++) {
      removeLast();
    }
  }
}
