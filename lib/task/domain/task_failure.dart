import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_failure.freezed.dart';

@freezed
class TaskFailure with _$TaskFailure {
  const factory TaskFailure.unexpected() = _TaskUnexpected;

  const factory TaskFailure.localFailed() = _LocalFailed;

  const factory TaskFailure.localSuccessButSyncFailed({
    required SyncFailure syncFailure,
  }) = _LocalSuccessButSyncFailed;

  const TaskFailure._();
}

@freezed
class SyncFailure with _$SyncFailure {
  const SyncFailure._();

  const factory SyncFailure.unexpected() = _SyncUnexpected;

  const factory SyncFailure.noInternet() = _NoInternet;

  const factory SyncFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory SyncFailure.unableToUpdate() = _UnableToUpdate;
}
