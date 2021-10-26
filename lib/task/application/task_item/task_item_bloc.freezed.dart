// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskItemEventTearOff {
  const _$TaskItemEventTearOff();

  _TaskCompleted completed() {
    return const _TaskCompleted();
  }

  _TaskUnCompleted unCompleted() {
    return const _TaskUnCompleted();
  }

  _FailureHandled failureHandled() {
    return const _FailureHandled();
  }

  _TaskBodyChanged bodyChanged({required String body}) {
    return _TaskBodyChanged(
      body: body,
    );
  }
}

/// @nodoc
const $TaskItemEvent = _$TaskItemEventTearOff();

/// @nodoc
mixin _$TaskItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() completed,
    required TResult Function() unCompleted,
    required TResult Function() failureHandled,
    required TResult Function(String body) bodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
    required TResult Function(_FailureHandled value) failureHandled,
    required TResult Function(_TaskBodyChanged value) bodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemEventCopyWith<$Res> {
  factory $TaskItemEventCopyWith(
          TaskItemEvent value, $Res Function(TaskItemEvent) then) =
      _$TaskItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskItemEventCopyWithImpl<$Res>
    implements $TaskItemEventCopyWith<$Res> {
  _$TaskItemEventCopyWithImpl(this._value, this._then);

  final TaskItemEvent _value;
  // ignore: unused_field
  final $Res Function(TaskItemEvent) _then;
}

/// @nodoc
abstract class _$TaskCompletedCopyWith<$Res> {
  factory _$TaskCompletedCopyWith(
          _TaskCompleted value, $Res Function(_TaskCompleted) then) =
      __$TaskCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TaskCompletedCopyWithImpl<$Res>
    extends _$TaskItemEventCopyWithImpl<$Res>
    implements _$TaskCompletedCopyWith<$Res> {
  __$TaskCompletedCopyWithImpl(
      _TaskCompleted _value, $Res Function(_TaskCompleted) _then)
      : super(_value, (v) => _then(v as _TaskCompleted));

  @override
  _TaskCompleted get _value => super._value as _TaskCompleted;
}

/// @nodoc

class _$_TaskCompleted extends _TaskCompleted {
  const _$_TaskCompleted() : super._();

  @override
  String toString() {
    return 'TaskItemEvent.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TaskCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() completed,
    required TResult Function() unCompleted,
    required TResult Function() failureHandled,
    required TResult Function(String body) bodyChanged,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
    required TResult Function(_FailureHandled value) failureHandled,
    required TResult Function(_TaskBodyChanged value) bodyChanged,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _TaskCompleted extends TaskItemEvent {
  const factory _TaskCompleted() = _$_TaskCompleted;
  const _TaskCompleted._() : super._();
}

/// @nodoc
abstract class _$TaskUnCompletedCopyWith<$Res> {
  factory _$TaskUnCompletedCopyWith(
          _TaskUnCompleted value, $Res Function(_TaskUnCompleted) then) =
      __$TaskUnCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TaskUnCompletedCopyWithImpl<$Res>
    extends _$TaskItemEventCopyWithImpl<$Res>
    implements _$TaskUnCompletedCopyWith<$Res> {
  __$TaskUnCompletedCopyWithImpl(
      _TaskUnCompleted _value, $Res Function(_TaskUnCompleted) _then)
      : super(_value, (v) => _then(v as _TaskUnCompleted));

  @override
  _TaskUnCompleted get _value => super._value as _TaskUnCompleted;
}

/// @nodoc

class _$_TaskUnCompleted extends _TaskUnCompleted {
  const _$_TaskUnCompleted() : super._();

  @override
  String toString() {
    return 'TaskItemEvent.unCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TaskUnCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() completed,
    required TResult Function() unCompleted,
    required TResult Function() failureHandled,
    required TResult Function(String body) bodyChanged,
  }) {
    return unCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
  }) {
    return unCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
    required TResult orElse(),
  }) {
    if (unCompleted != null) {
      return unCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
    required TResult Function(_FailureHandled value) failureHandled,
    required TResult Function(_TaskBodyChanged value) bodyChanged,
  }) {
    return unCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
  }) {
    return unCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
    required TResult orElse(),
  }) {
    if (unCompleted != null) {
      return unCompleted(this);
    }
    return orElse();
  }
}

abstract class _TaskUnCompleted extends TaskItemEvent {
  const factory _TaskUnCompleted() = _$_TaskUnCompleted;
  const _TaskUnCompleted._() : super._();
}

/// @nodoc
abstract class _$FailureHandledCopyWith<$Res> {
  factory _$FailureHandledCopyWith(
          _FailureHandled value, $Res Function(_FailureHandled) then) =
      __$FailureHandledCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureHandledCopyWithImpl<$Res>
    extends _$TaskItemEventCopyWithImpl<$Res>
    implements _$FailureHandledCopyWith<$Res> {
  __$FailureHandledCopyWithImpl(
      _FailureHandled _value, $Res Function(_FailureHandled) _then)
      : super(_value, (v) => _then(v as _FailureHandled));

  @override
  _FailureHandled get _value => super._value as _FailureHandled;
}

/// @nodoc

class _$_FailureHandled extends _FailureHandled {
  const _$_FailureHandled() : super._();

  @override
  String toString() {
    return 'TaskItemEvent.failureHandled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FailureHandled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() completed,
    required TResult Function() unCompleted,
    required TResult Function() failureHandled,
    required TResult Function(String body) bodyChanged,
  }) {
    return failureHandled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
  }) {
    return failureHandled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
    required TResult orElse(),
  }) {
    if (failureHandled != null) {
      return failureHandled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
    required TResult Function(_FailureHandled value) failureHandled,
    required TResult Function(_TaskBodyChanged value) bodyChanged,
  }) {
    return failureHandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
  }) {
    return failureHandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
    required TResult orElse(),
  }) {
    if (failureHandled != null) {
      return failureHandled(this);
    }
    return orElse();
  }
}

abstract class _FailureHandled extends TaskItemEvent {
  const factory _FailureHandled() = _$_FailureHandled;
  const _FailureHandled._() : super._();
}

/// @nodoc
abstract class _$TaskBodyChangedCopyWith<$Res> {
  factory _$TaskBodyChangedCopyWith(
          _TaskBodyChanged value, $Res Function(_TaskBodyChanged) then) =
      __$TaskBodyChangedCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class __$TaskBodyChangedCopyWithImpl<$Res>
    extends _$TaskItemEventCopyWithImpl<$Res>
    implements _$TaskBodyChangedCopyWith<$Res> {
  __$TaskBodyChangedCopyWithImpl(
      _TaskBodyChanged _value, $Res Function(_TaskBodyChanged) _then)
      : super(_value, (v) => _then(v as _TaskBodyChanged));

  @override
  _TaskBodyChanged get _value => super._value as _TaskBodyChanged;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_TaskBodyChanged(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskBodyChanged extends _TaskBodyChanged {
  const _$_TaskBodyChanged({required this.body}) : super._();

  @override
  final String body;

  @override
  String toString() {
    return 'TaskItemEvent.bodyChanged(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskBodyChanged &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  _$TaskBodyChangedCopyWith<_TaskBodyChanged> get copyWith =>
      __$TaskBodyChangedCopyWithImpl<_TaskBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() completed,
    required TResult Function() unCompleted,
    required TResult Function() failureHandled,
    required TResult Function(String body) bodyChanged,
  }) {
    return bodyChanged(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
  }) {
    return bodyChanged?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? completed,
    TResult Function()? unCompleted,
    TResult Function()? failureHandled,
    TResult Function(String body)? bodyChanged,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
    required TResult Function(_FailureHandled value) failureHandled,
    required TResult Function(_TaskBodyChanged value) bodyChanged,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    TResult Function(_FailureHandled value)? failureHandled,
    TResult Function(_TaskBodyChanged value)? bodyChanged,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _TaskBodyChanged extends TaskItemEvent {
  const factory _TaskBodyChanged({required String body}) = _$_TaskBodyChanged;
  const _TaskBodyChanged._() : super._();

  String get body;
  @JsonKey(ignore: true)
  _$TaskBodyChangedCopyWith<_TaskBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TaskItemStateTearOff {
  const _$TaskItemStateTearOff();

  _TaskItemState call({required Task task, TaskFailure? failure}) {
    return _TaskItemState(
      task: task,
      failure: failure,
    );
  }
}

/// @nodoc
const $TaskItemState = _$TaskItemStateTearOff();

/// @nodoc
mixin _$TaskItemState {
  Task get task => throw _privateConstructorUsedError;
  TaskFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskItemStateCopyWith<TaskItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemStateCopyWith<$Res> {
  factory $TaskItemStateCopyWith(
          TaskItemState value, $Res Function(TaskItemState) then) =
      _$TaskItemStateCopyWithImpl<$Res>;
  $Res call({Task task, TaskFailure? failure});

  $TaskCopyWith<$Res> get task;
  $TaskFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$TaskItemStateCopyWithImpl<$Res>
    implements $TaskItemStateCopyWith<$Res> {
  _$TaskItemStateCopyWithImpl(this._value, this._then);

  final TaskItemState _value;
  // ignore: unused_field
  final $Res Function(TaskItemState) _then;

  @override
  $Res call({
    Object? task = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }

  @override
  $TaskFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $TaskFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$TaskItemStateCopyWith<$Res>
    implements $TaskItemStateCopyWith<$Res> {
  factory _$TaskItemStateCopyWith(
          _TaskItemState value, $Res Function(_TaskItemState) then) =
      __$TaskItemStateCopyWithImpl<$Res>;
  @override
  $Res call({Task task, TaskFailure? failure});

  @override
  $TaskCopyWith<$Res> get task;
  @override
  $TaskFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$TaskItemStateCopyWithImpl<$Res>
    extends _$TaskItemStateCopyWithImpl<$Res>
    implements _$TaskItemStateCopyWith<$Res> {
  __$TaskItemStateCopyWithImpl(
      _TaskItemState _value, $Res Function(_TaskItemState) _then)
      : super(_value, (v) => _then(v as _TaskItemState));

  @override
  _TaskItemState get _value => super._value as _TaskItemState;

  @override
  $Res call({
    Object? task = freezed,
    Object? failure = freezed,
  }) {
    return _then(_TaskItemState(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ));
  }
}

/// @nodoc

class _$_TaskItemState extends _TaskItemState {
  const _$_TaskItemState({required this.task, this.failure}) : super._();

  @override
  final Task task;
  @override
  final TaskFailure? failure;

  @override
  String toString() {
    return 'TaskItemState(task: $task, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskItemState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, failure);

  @JsonKey(ignore: true)
  @override
  _$TaskItemStateCopyWith<_TaskItemState> get copyWith =>
      __$TaskItemStateCopyWithImpl<_TaskItemState>(this, _$identity);
}

abstract class _TaskItemState extends TaskItemState {
  const factory _TaskItemState({required Task task, TaskFailure? failure}) =
      _$_TaskItemState;
  const _TaskItemState._() : super._();

  @override
  Task get task;
  @override
  TaskFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$TaskItemStateCopyWith<_TaskItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
