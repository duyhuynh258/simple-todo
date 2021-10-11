import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/shared/constants.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/exceptions.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_paginated_sembast_query.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_sembast_dto.dart';
import 'package:simple_todo_app/task/infrastructure/pagination_config.dart';

class TaskLocalDatasource {
  TaskLocalDatasource(this._sembastDatabase) {
    _watchAllPaginatedFinder = TaskPaginatedSembastFinder(
        numberOfItemToFetch:
            PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
        finder: Finder(sortOrders: [SortOrder('serverTimeStamp', false)]));

    _watchUncompletedPaginatedFinder = TaskPaginatedSembastFinder(
        numberOfItemToFetch:
            PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
        finder: Finder(
            sortOrders: [SortOrder('serverTimeStamp', false)],
            filter: Filter.equals('isCompleted', false)));
  }

  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tasksStore);

  late TaskPaginatedSembastFinder _watchAllPaginatedFinder;
  late TaskPaginatedSembastFinder _watchUncompletedPaginatedFinder;

  Future<PaginatedList<Task>> getAllTasks(
      {bool nextPage = false, int loadedItemsCount = 0}) async {
    if (nextPage == false) {
      _watchAllPaginatedFinder =
          _watchAllPaginatedFinder.copyWith(lastRecord: null);
    }
    try {
      final List<RecordSnapshot<String, Map<String, dynamic>>> records =
          await _store
              .query(finder: _watchAllPaginatedFinder.paginatedFinder)
              .getSnapshots(_sembastDatabase.instance);

      final isNextPageAvailable =
          records.length > PaginationConfig.itemsPerPage;
      final List<RecordSnapshot<String, Map<String, dynamic>>> pageRecords =
          records..removeRecordsOutOfPage();
      // Update last doc
      _watchAllPaginatedFinder =
          _watchAllPaginatedFinder.copyWith(lastRecord: pageRecords.last);
      return PaginatedList(
        entities: pageRecords
            .map((record) => TaskSembastDTO.fromSembast(record).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      //TODO: handle more exceptions
      throw const TaskLocalDataSourceException.platformException();
    }
  }

  Future<PaginatedList<Task>> getUncompletedTasks(
      {bool nextPage = false, int loadedItemsCount = 0}) async {
    if (nextPage == false) {
      _watchUncompletedPaginatedFinder =
          _watchUncompletedPaginatedFinder.copyWith(lastRecord: null);
    }
    try {
      final List<RecordSnapshot<String, Map<String, dynamic>>> records =
          await _store
              .query(finder: _watchUncompletedPaginatedFinder.paginatedFinder)
              .getSnapshots(_sembastDatabase.instance);

      final isNextPageAvailable =
          records.length > PaginationConfig.itemsPerPage;
      final List<RecordSnapshot<String, Map<String, dynamic>>> pageRecords =
          records..removeRecordsOutOfPage();
      // Update last doc
      _watchUncompletedPaginatedFinder = _watchUncompletedPaginatedFinder
          .copyWith(lastRecord: pageRecords.last);
      return PaginatedList(
        entities: pageRecords
            .map((record) => TaskSembastDTO.fromSembast(record).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      //TODO: handle more exceptions
      throw const TaskLocalDataSourceException.platformException();
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

extension RemoveDocsOutOfPage
    on List<RecordSnapshot<String, Map<String, dynamic>>> {
  void removeRecordsOutOfPage() {
    if (length <= PaginationConfig.itemsPerPage) {
      return;
    }
    final snapshotsOutOfPageCount = length - PaginationConfig.itemsPerPage;
    for (int i = 0; i < snapshotsOutOfPageCount; i++) {
      removeLast();
    }
  }
}
