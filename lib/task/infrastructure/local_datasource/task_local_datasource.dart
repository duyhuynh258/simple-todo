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
    _getAllPaginatedFinder = TaskPaginatedSembastFinder(
      numberOfItemToFetch:
          PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
      finder: Finder(sortOrders: [SortOrder('localTimeStamp', false)]),
    );

    _getUncompletedPaginatedFinder = TaskPaginatedSembastFinder(
      numberOfItemToFetch:
          PaginationConfig.itemsShouldFetchToCheckNextPageAvailable,
      finder: Finder(
        sortOrders: [SortOrder('localTimeStamp', false)],
        filter: Filter.equals('isCompleted', false),
      ),
    );
  }

  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tasksStore);

  late TaskPaginatedSembastFinder _getAllPaginatedFinder;
  late TaskPaginatedSembastFinder _getUncompletedPaginatedFinder;

  Stream<bool?> get isTasksSynced => _store.record(isTasksSyncedKey).onSnapshot(
        _sembastDatabase.instance,
      ) as Stream<bool?>;

  Future<PaginatedList<Task>> getAllTasks({bool nextPage = false}) async {
    if (nextPage == false) {
      _getAllPaginatedFinder =
          _getAllPaginatedFinder.copyWith(lastRecord: null);
    }
    try {
      final List<RecordSnapshot<String, Map<String, dynamic>>> records =
          await _store.find(
        _sembastDatabase.instance,
        finder: _getAllPaginatedFinder.paginatedFinder,
      );

      if (records.isEmpty) {
        return const PaginatedList(
          entities: [],
          isNextPageAvailable: false,
        );
      }

      final isNextPageAvailable =
          records.length > PaginationConfig.itemsPerPage;
      final List<RecordSnapshot<String, Map<String, dynamic>>> pageRecords =
          List.from(records)..removeRecordsOutOfPage();
      // Update last doc
      _getAllPaginatedFinder =
          _getAllPaginatedFinder.copyWith(lastRecord: pageRecords.last);
      return PaginatedList(
        entities: pageRecords
            .map((record) => TaskSembastDTO.fromSembast(record).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      // TODO(steve): handle more exceptions
      throw const TaskLocalDataSourceException.platformException();
    }
  }

  Future<PaginatedList<Task>> getUncompletedTasks({
    bool nextPage = false,
  }) async {
    if (nextPage == false) {
      _getUncompletedPaginatedFinder =
          _getUncompletedPaginatedFinder.copyWith(lastRecord: null);
    }
    try {
      final List<RecordSnapshot<String, Map<String, dynamic>>> records =
          await _store
              .query(finder: _getUncompletedPaginatedFinder.paginatedFinder)
              .getSnapshots(_sembastDatabase.instance);

      final isNextPageAvailable =
          records.length > PaginationConfig.itemsPerPage;
      final List<RecordSnapshot<String, Map<String, dynamic>>> pageRecords =
          records..removeRecordsOutOfPage();
      // Update last doc
      _getUncompletedPaginatedFinder =
          _getUncompletedPaginatedFinder.copyWith(lastRecord: pageRecords.last);
      return PaginatedList(
        entities: pageRecords
            .map((record) => TaskSembastDTO.fromSembast(record).toDomain())
            .toList(growable: false),
        isNextPageAvailable: isNextPageAvailable,
      );
    } catch (e) {
      // TODO(steve): handle more exceptions
      throw const TaskLocalDataSourceException.platformException();
    }
  }

  Future<void> upsertTasks(List<TaskSembastDTO> tasksDTO) async {
    try {
      // final records = await _store
      //     .records(tasksDTO.map((e) => e.id).toList())
      //     .get(_sembastDatabase.instance);
      await _store.records(tasksDTO.map((e) => e.id).toList()).put(
            _sembastDatabase.instance,
            tasksDTO.map((e) => e.toJson()).toList(),
          );
    } catch (e) {
      // TODO(steve): handle more exceptions
      throw const TaskLocalDataSourceException.platformException();
    }
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
