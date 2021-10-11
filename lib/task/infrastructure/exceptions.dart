import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class TaskRemoteDataSourceException
    with _$TaskRemoteDataSourceException
    implements Exception {
  const TaskRemoteDataSourceException._();

  const factory TaskRemoteDataSourceException.noInternet() = _NoInternet;
  const factory TaskRemoteDataSourceException.unexpected() = _Unexpected;
  const factory TaskRemoteDataSourceException.insufficientPermissions() =
      _InsufficientPermissions;
}
