import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_paginated_firestore_query.freezed.dart';

@freezed
class TaskPaginatedFirestoreQuery with _$TaskPaginatedFirestoreQuery {
  const TaskPaginatedFirestoreQuery._();

  const factory TaskPaginatedFirestoreQuery({
    QueryDocumentSnapshot? lastDoc,
    required int numberOfItemToFetch,
    required Future<Query> queryFuture,
  }) = _TaskPaginatedFirestoreQuery;

  Future<Query> get paginatedQuery async {
    final query = await queryFuture;
    return (lastDoc != null ? query.startAfterDocument(lastDoc!) : query)
      ..limit(numberOfItemToFetch);
  }
}
