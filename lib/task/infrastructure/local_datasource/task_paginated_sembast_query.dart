import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';

part 'task_paginated_sembast_query.freezed.dart';

@freezed
abstract class TaskPaginatedSembastFinder with _$TaskPaginatedSembastFinder {
  const TaskPaginatedSembastFinder._();

  const factory TaskPaginatedSembastFinder({
    RecordSnapshot<String, Map<String, dynamic>>? lastRecord,
    required int numberOfItemToFetch,
    required Finder finder,
  }) = _TaskPaginatedSembastFinder;

  Finder get paginatedFinder {
    final resultFinder = finder..limit = numberOfItemToFetch;
    if (lastRecord != null) {
      return resultFinder..start = Boundary(record: lastRecord);
    }

    return resultFinder;
  }
}
