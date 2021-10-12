// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskFailureTearOff {
  const _$TaskFailureTearOff();

  _TaskUnexpected unexpected() {
    return const _TaskUnexpected();
  }

  _LocalFailed localFailed() {
    return const _LocalFailed();
  }

  _LocalSuccessButSyncFailed localSuccessButSyncFailed(
      {required SyncFailure syncFailure}) {
    return _LocalSuccessButSyncFailed(
      syncFailure: syncFailure,
    );
  }
}

/// @nodoc
const $TaskFailure = _$TaskFailureTearOff();

/// @nodoc
mixin _$TaskFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() localFailed,
    required TResult Function(SyncFailure syncFailure)
        localSuccessButSyncFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskUnexpected value) unexpected,
    required TResult Function(_LocalFailed value) localFailed,
    required TResult Function(_LocalSuccessButSyncFailed value)
        localSuccessButSyncFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFailureCopyWith<$Res> {
  factory $TaskFailureCopyWith(
          TaskFailure value, $Res Function(TaskFailure) then) =
      _$TaskFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskFailureCopyWithImpl<$Res> implements $TaskFailureCopyWith<$Res> {
  _$TaskFailureCopyWithImpl(this._value, this._then);

  final TaskFailure _value;
  // ignore: unused_field
  final $Res Function(TaskFailure) _then;
}

/// @nodoc
abstract class _$TaskUnexpectedCopyWith<$Res> {
  factory _$TaskUnexpectedCopyWith(
          _TaskUnexpected value, $Res Function(_TaskUnexpected) then) =
      __$TaskUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TaskUnexpectedCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res>
    implements _$TaskUnexpectedCopyWith<$Res> {
  __$TaskUnexpectedCopyWithImpl(
      _TaskUnexpected _value, $Res Function(_TaskUnexpected) _then)
      : super(_value, (v) => _then(v as _TaskUnexpected));

  @override
  _TaskUnexpected get _value => super._value as _TaskUnexpected;
}

/// @nodoc

class _$_TaskUnexpected extends _TaskUnexpected {
  const _$_TaskUnexpected() : super._();

  @override
  String toString() {
    return 'TaskFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TaskUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() localFailed,
    required TResult Function(SyncFailure syncFailure)
        localSuccessButSyncFailed,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskUnexpected value) unexpected,
    required TResult Function(_LocalFailed value) localFailed,
    required TResult Function(_LocalSuccessButSyncFailed value)
        localSuccessButSyncFailed,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _TaskUnexpected extends TaskFailure {
  const factory _TaskUnexpected() = _$_TaskUnexpected;
  const _TaskUnexpected._() : super._();
}

/// @nodoc
abstract class _$LocalFailedCopyWith<$Res> {
  factory _$LocalFailedCopyWith(
          _LocalFailed value, $Res Function(_LocalFailed) then) =
      __$LocalFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocalFailedCopyWithImpl<$Res> extends _$TaskFailureCopyWithImpl<$Res>
    implements _$LocalFailedCopyWith<$Res> {
  __$LocalFailedCopyWithImpl(
      _LocalFailed _value, $Res Function(_LocalFailed) _then)
      : super(_value, (v) => _then(v as _LocalFailed));

  @override
  _LocalFailed get _value => super._value as _LocalFailed;
}

/// @nodoc

class _$_LocalFailed extends _LocalFailed {
  const _$_LocalFailed() : super._();

  @override
  String toString() {
    return 'TaskFailure.localFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LocalFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() localFailed,
    required TResult Function(SyncFailure syncFailure)
        localSuccessButSyncFailed,
  }) {
    return localFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
  }) {
    return localFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (localFailed != null) {
      return localFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskUnexpected value) unexpected,
    required TResult Function(_LocalFailed value) localFailed,
    required TResult Function(_LocalSuccessButSyncFailed value)
        localSuccessButSyncFailed,
  }) {
    return localFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
  }) {
    return localFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (localFailed != null) {
      return localFailed(this);
    }
    return orElse();
  }
}

abstract class _LocalFailed extends TaskFailure {
  const factory _LocalFailed() = _$_LocalFailed;
  const _LocalFailed._() : super._();
}

/// @nodoc
abstract class _$LocalSuccessButSyncFailedCopyWith<$Res> {
  factory _$LocalSuccessButSyncFailedCopyWith(_LocalSuccessButSyncFailed value,
          $Res Function(_LocalSuccessButSyncFailed) then) =
      __$LocalSuccessButSyncFailedCopyWithImpl<$Res>;
  $Res call({SyncFailure syncFailure});

  $SyncFailureCopyWith<$Res> get syncFailure;
}

/// @nodoc
class __$LocalSuccessButSyncFailedCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res>
    implements _$LocalSuccessButSyncFailedCopyWith<$Res> {
  __$LocalSuccessButSyncFailedCopyWithImpl(_LocalSuccessButSyncFailed _value,
      $Res Function(_LocalSuccessButSyncFailed) _then)
      : super(_value, (v) => _then(v as _LocalSuccessButSyncFailed));

  @override
  _LocalSuccessButSyncFailed get _value =>
      super._value as _LocalSuccessButSyncFailed;

  @override
  $Res call({
    Object? syncFailure = freezed,
  }) {
    return _then(_LocalSuccessButSyncFailed(
      syncFailure: syncFailure == freezed
          ? _value.syncFailure
          : syncFailure // ignore: cast_nullable_to_non_nullable
              as SyncFailure,
    ));
  }

  @override
  $SyncFailureCopyWith<$Res> get syncFailure {
    return $SyncFailureCopyWith<$Res>(_value.syncFailure, (value) {
      return _then(_value.copyWith(syncFailure: value));
    });
  }
}

/// @nodoc

class _$_LocalSuccessButSyncFailed extends _LocalSuccessButSyncFailed {
  const _$_LocalSuccessButSyncFailed({required this.syncFailure}) : super._();

  @override
  final SyncFailure syncFailure;

  @override
  String toString() {
    return 'TaskFailure.localSuccessButSyncFailed(syncFailure: $syncFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalSuccessButSyncFailed &&
            (identical(other.syncFailure, syncFailure) ||
                other.syncFailure == syncFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, syncFailure);

  @JsonKey(ignore: true)
  @override
  _$LocalSuccessButSyncFailedCopyWith<_LocalSuccessButSyncFailed>
      get copyWith =>
          __$LocalSuccessButSyncFailedCopyWithImpl<_LocalSuccessButSyncFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() localFailed,
    required TResult Function(SyncFailure syncFailure)
        localSuccessButSyncFailed,
  }) {
    return localSuccessButSyncFailed(syncFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
  }) {
    return localSuccessButSyncFailed?.call(syncFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? localFailed,
    TResult Function(SyncFailure syncFailure)? localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (localSuccessButSyncFailed != null) {
      return localSuccessButSyncFailed(syncFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskUnexpected value) unexpected,
    required TResult Function(_LocalFailed value) localFailed,
    required TResult Function(_LocalSuccessButSyncFailed value)
        localSuccessButSyncFailed,
  }) {
    return localSuccessButSyncFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
  }) {
    return localSuccessButSyncFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskUnexpected value)? unexpected,
    TResult Function(_LocalFailed value)? localFailed,
    TResult Function(_LocalSuccessButSyncFailed value)?
        localSuccessButSyncFailed,
    required TResult orElse(),
  }) {
    if (localSuccessButSyncFailed != null) {
      return localSuccessButSyncFailed(this);
    }
    return orElse();
  }
}

abstract class _LocalSuccessButSyncFailed extends TaskFailure {
  const factory _LocalSuccessButSyncFailed({required SyncFailure syncFailure}) =
      _$_LocalSuccessButSyncFailed;
  const _LocalSuccessButSyncFailed._() : super._();

  SyncFailure get syncFailure;
  @JsonKey(ignore: true)
  _$LocalSuccessButSyncFailedCopyWith<_LocalSuccessButSyncFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SyncFailureTearOff {
  const _$SyncFailureTearOff();

  _SyncUnexpected unexpected() {
    return const _SyncUnexpected();
  }

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _InsufficientPermissions insufficientPermissions() {
    return const _InsufficientPermissions();
  }

  _UnableToUpdate unableToUpdate() {
    return const _UnableToUpdate();
  }
}

/// @nodoc
const $SyncFailure = _$SyncFailureTearOff();

/// @nodoc
mixin _$SyncFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncUnexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncFailureCopyWith<$Res> {
  factory $SyncFailureCopyWith(
          SyncFailure value, $Res Function(SyncFailure) then) =
      _$SyncFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SyncFailureCopyWithImpl<$Res> implements $SyncFailureCopyWith<$Res> {
  _$SyncFailureCopyWithImpl(this._value, this._then);

  final SyncFailure _value;
  // ignore: unused_field
  final $Res Function(SyncFailure) _then;
}

/// @nodoc
abstract class _$SyncUnexpectedCopyWith<$Res> {
  factory _$SyncUnexpectedCopyWith(
          _SyncUnexpected value, $Res Function(_SyncUnexpected) then) =
      __$SyncUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SyncUnexpectedCopyWithImpl<$Res>
    extends _$SyncFailureCopyWithImpl<$Res>
    implements _$SyncUnexpectedCopyWith<$Res> {
  __$SyncUnexpectedCopyWithImpl(
      _SyncUnexpected _value, $Res Function(_SyncUnexpected) _then)
      : super(_value, (v) => _then(v as _SyncUnexpected));

  @override
  _SyncUnexpected get _value => super._value as _SyncUnexpected;
}

/// @nodoc

class _$_SyncUnexpected extends _SyncUnexpected {
  const _$_SyncUnexpected() : super._();

  @override
  String toString() {
    return 'SyncFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SyncUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncUnexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _SyncUnexpected extends SyncFailure {
  const factory _SyncUnexpected() = _$_SyncUnexpected;
  const _SyncUnexpected._() : super._();
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$SyncFailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;
}

/// @nodoc

class _$_NoInternet extends _NoInternet {
  const _$_NoInternet() : super._();

  @override
  String toString() {
    return 'SyncFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncUnexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet extends SyncFailure {
  const factory _NoInternet() = _$_NoInternet;
  const _NoInternet._() : super._();
}

/// @nodoc
abstract class _$InsufficientPermissionsCopyWith<$Res> {
  factory _$InsufficientPermissionsCopyWith(_InsufficientPermissions value,
          $Res Function(_InsufficientPermissions) then) =
      __$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$SyncFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionsCopyWith<$Res> {
  __$InsufficientPermissionsCopyWithImpl(_InsufficientPermissions _value,
      $Res Function(_InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _InsufficientPermissions));

  @override
  _InsufficientPermissions get _value =>
      super._value as _InsufficientPermissions;
}

/// @nodoc

class _$_InsufficientPermissions extends _InsufficientPermissions {
  const _$_InsufficientPermissions() : super._();

  @override
  String toString() {
    return 'SyncFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncUnexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions extends SyncFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
  const _InsufficientPermissions._() : super._();
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<$Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate value, $Res Function(_UnableToUpdate) then) =
      __$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<$Res>
    extends _$SyncFailureCopyWithImpl<$Res>
    implements _$UnableToUpdateCopyWith<$Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate _value, $Res Function(_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate));

  @override
  _UnableToUpdate get _value => super._value as _UnableToUpdate;
}

/// @nodoc

class _$_UnableToUpdate extends _UnableToUpdate {
  const _$_UnableToUpdate() : super._();

  @override
  String toString() {
    return 'SyncFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncUnexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncUnexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate extends SyncFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
  const _UnableToUpdate._() : super._();
}
