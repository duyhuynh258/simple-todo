// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_paginated_firestore_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskPaginatedFirestoreQueryTearOff {
  const _$TaskPaginatedFirestoreQueryTearOff();

  _TaskPaginatedFirestoreQuery call(
      {QueryDocumentSnapshot<Object?>? lastDoc,
      required int numberOfItemToFetch,
      required Future<Query<Object?>> queryFuture}) {
    return _TaskPaginatedFirestoreQuery(
      lastDoc: lastDoc,
      numberOfItemToFetch: numberOfItemToFetch,
      queryFuture: queryFuture,
    );
  }
}

/// @nodoc
const $TaskPaginatedFirestoreQuery = _$TaskPaginatedFirestoreQueryTearOff();

/// @nodoc
mixin _$TaskPaginatedFirestoreQuery {
  QueryDocumentSnapshot<Object?>? get lastDoc =>
      throw _privateConstructorUsedError;
  int get numberOfItemToFetch => throw _privateConstructorUsedError;
  Future<Query<Object?>> get queryFuture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskPaginatedFirestoreQueryCopyWith<TaskPaginatedFirestoreQuery>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPaginatedFirestoreQueryCopyWith<$Res> {
  factory $TaskPaginatedFirestoreQueryCopyWith(
          TaskPaginatedFirestoreQuery value,
          $Res Function(TaskPaginatedFirestoreQuery) then) =
      _$TaskPaginatedFirestoreQueryCopyWithImpl<$Res>;
  $Res call(
      {QueryDocumentSnapshot<Object?>? lastDoc,
      int numberOfItemToFetch,
      Future<Query<Object?>> queryFuture});
}

/// @nodoc
class _$TaskPaginatedFirestoreQueryCopyWithImpl<$Res>
    implements $TaskPaginatedFirestoreQueryCopyWith<$Res> {
  _$TaskPaginatedFirestoreQueryCopyWithImpl(this._value, this._then);

  final TaskPaginatedFirestoreQuery _value;
  // ignore: unused_field
  final $Res Function(TaskPaginatedFirestoreQuery) _then;

  @override
  $Res call({
    Object? lastDoc = freezed,
    Object? numberOfItemToFetch = freezed,
    Object? queryFuture = freezed,
  }) {
    return _then(_value.copyWith(
      lastDoc: lastDoc == freezed
          ? _value.lastDoc
          : lastDoc // ignore: cast_nullable_to_non_nullable
              as QueryDocumentSnapshot<Object?>?,
      numberOfItemToFetch: numberOfItemToFetch == freezed
          ? _value.numberOfItemToFetch
          : numberOfItemToFetch // ignore: cast_nullable_to_non_nullable
              as int,
      queryFuture: queryFuture == freezed
          ? _value.queryFuture
          : queryFuture // ignore: cast_nullable_to_non_nullable
              as Future<Query<Object?>>,
    ));
  }
}

/// @nodoc
abstract class _$TaskPaginatedFirestoreQueryCopyWith<$Res>
    implements $TaskPaginatedFirestoreQueryCopyWith<$Res> {
  factory _$TaskPaginatedFirestoreQueryCopyWith(
          _TaskPaginatedFirestoreQuery value,
          $Res Function(_TaskPaginatedFirestoreQuery) then) =
      __$TaskPaginatedFirestoreQueryCopyWithImpl<$Res>;
  @override
  $Res call(
      {QueryDocumentSnapshot<Object?>? lastDoc,
      int numberOfItemToFetch,
      Future<Query<Object?>> queryFuture});
}

/// @nodoc
class __$TaskPaginatedFirestoreQueryCopyWithImpl<$Res>
    extends _$TaskPaginatedFirestoreQueryCopyWithImpl<$Res>
    implements _$TaskPaginatedFirestoreQueryCopyWith<$Res> {
  __$TaskPaginatedFirestoreQueryCopyWithImpl(
      _TaskPaginatedFirestoreQuery _value,
      $Res Function(_TaskPaginatedFirestoreQuery) _then)
      : super(_value, (v) => _then(v as _TaskPaginatedFirestoreQuery));

  @override
  _TaskPaginatedFirestoreQuery get _value =>
      super._value as _TaskPaginatedFirestoreQuery;

  @override
  $Res call({
    Object? lastDoc = freezed,
    Object? numberOfItemToFetch = freezed,
    Object? queryFuture = freezed,
  }) {
    return _then(_TaskPaginatedFirestoreQuery(
      lastDoc: lastDoc == freezed
          ? _value.lastDoc
          : lastDoc // ignore: cast_nullable_to_non_nullable
              as QueryDocumentSnapshot<Object?>?,
      numberOfItemToFetch: numberOfItemToFetch == freezed
          ? _value.numberOfItemToFetch
          : numberOfItemToFetch // ignore: cast_nullable_to_non_nullable
              as int,
      queryFuture: queryFuture == freezed
          ? _value.queryFuture
          : queryFuture // ignore: cast_nullable_to_non_nullable
              as Future<Query<Object?>>,
    ));
  }
}

/// @nodoc

class _$_TaskPaginatedFirestoreQuery extends _TaskPaginatedFirestoreQuery {
  const _$_TaskPaginatedFirestoreQuery(
      {this.lastDoc,
      required this.numberOfItemToFetch,
      required this.queryFuture})
      : super._();

  @override
  final QueryDocumentSnapshot<Object?>? lastDoc;
  @override
  final int numberOfItemToFetch;
  @override
  final Future<Query<Object?>> queryFuture;

  @override
  String toString() {
    return 'TaskPaginatedFirestoreQuery(lastDoc: $lastDoc, numberOfItemToFetch: $numberOfItemToFetch, queryFuture: $queryFuture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskPaginatedFirestoreQuery &&
            (identical(other.lastDoc, lastDoc) || other.lastDoc == lastDoc) &&
            (identical(other.numberOfItemToFetch, numberOfItemToFetch) ||
                other.numberOfItemToFetch == numberOfItemToFetch) &&
            (identical(other.queryFuture, queryFuture) ||
                other.queryFuture == queryFuture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lastDoc, numberOfItemToFetch, queryFuture);

  @JsonKey(ignore: true)
  @override
  _$TaskPaginatedFirestoreQueryCopyWith<_TaskPaginatedFirestoreQuery>
      get copyWith => __$TaskPaginatedFirestoreQueryCopyWithImpl<
          _TaskPaginatedFirestoreQuery>(this, _$identity);
}

abstract class _TaskPaginatedFirestoreQuery
    extends TaskPaginatedFirestoreQuery {
  const factory _TaskPaginatedFirestoreQuery(
          {QueryDocumentSnapshot<Object?>? lastDoc,
          required int numberOfItemToFetch,
          required Future<Query<Object?>> queryFuture}) =
      _$_TaskPaginatedFirestoreQuery;
  const _TaskPaginatedFirestoreQuery._() : super._();

  @override
  QueryDocumentSnapshot<Object?>? get lastDoc;
  @override
  int get numberOfItemToFetch;
  @override
  Future<Query<Object?>> get queryFuture;
  @override
  @JsonKey(ignore: true)
  _$TaskPaginatedFirestoreQueryCopyWith<_TaskPaginatedFirestoreQuery>
      get copyWith => throw _privateConstructorUsedError;
}
