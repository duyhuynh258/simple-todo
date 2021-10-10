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

  _TaskSaved saved({required Task task}) {
    return _TaskSaved(
      task: task,
    );
  }

  _TaskCompleted completed({required Task task}) {
    return _TaskCompleted(
      task: task,
    );
  }

  _TaskUnCompleted unCompleted({required Task task}) {
    return _TaskUnCompleted(
      task: task,
    );
  }
}

/// @nodoc
const $TaskItemEvent = _$TaskItemEventTearOff();

/// @nodoc
mixin _$TaskItemEvent {
  Task get task => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saved,
    required TResult Function(Task task) completed,
    required TResult Function(Task task) unCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskSaved value) saved,
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskItemEventCopyWith<TaskItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemEventCopyWith<$Res> {
  factory $TaskItemEventCopyWith(
          TaskItemEvent value, $Res Function(TaskItemEvent) then) =
      _$TaskItemEventCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskItemEventCopyWithImpl<$Res>
    implements $TaskItemEventCopyWith<$Res> {
  _$TaskItemEventCopyWithImpl(this._value, this._then);

  final TaskItemEvent _value;
  // ignore: unused_field
  final $Res Function(TaskItemEvent) _then;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$TaskSavedCopyWith<$Res>
    implements $TaskItemEventCopyWith<$Res> {
  factory _$TaskSavedCopyWith(
          _TaskSaved value, $Res Function(_TaskSaved) then) =
      __$TaskSavedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$TaskSavedCopyWithImpl<$Res> extends _$TaskItemEventCopyWithImpl<$Res>
    implements _$TaskSavedCopyWith<$Res> {
  __$TaskSavedCopyWithImpl(_TaskSaved _value, $Res Function(_TaskSaved) _then)
      : super(_value, (v) => _then(v as _TaskSaved));

  @override
  _TaskSaved get _value => super._value as _TaskSaved;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_TaskSaved(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_TaskSaved extends _TaskSaved {
  const _$_TaskSaved({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskItemEvent.saved(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskSaved &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  _$TaskSavedCopyWith<_TaskSaved> get copyWith =>
      __$TaskSavedCopyWithImpl<_TaskSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saved,
    required TResult Function(Task task) completed,
    required TResult Function(Task task) unCompleted,
  }) {
    return saved(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
  }) {
    return saved?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskSaved value) saved,
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _TaskSaved extends TaskItemEvent {
  const factory _TaskSaved({required Task task}) = _$_TaskSaved;
  const _TaskSaved._() : super._();

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$TaskSavedCopyWith<_TaskSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskCompletedCopyWith<$Res>
    implements $TaskItemEventCopyWith<$Res> {
  factory _$TaskCompletedCopyWith(
          _TaskCompleted value, $Res Function(_TaskCompleted) then) =
      __$TaskCompletedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
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

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_TaskCompleted(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_TaskCompleted extends _TaskCompleted {
  const _$_TaskCompleted({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskItemEvent.completed(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskCompleted &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  _$TaskCompletedCopyWith<_TaskCompleted> get copyWith =>
      __$TaskCompletedCopyWithImpl<_TaskCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saved,
    required TResult Function(Task task) completed,
    required TResult Function(Task task) unCompleted,
  }) {
    return completed(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
  }) {
    return completed?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskSaved value) saved,
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _TaskCompleted extends TaskItemEvent {
  const factory _TaskCompleted({required Task task}) = _$_TaskCompleted;
  const _TaskCompleted._() : super._();

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$TaskCompletedCopyWith<_TaskCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskUnCompletedCopyWith<$Res>
    implements $TaskItemEventCopyWith<$Res> {
  factory _$TaskUnCompletedCopyWith(
          _TaskUnCompleted value, $Res Function(_TaskUnCompleted) then) =
      __$TaskUnCompletedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
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

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_TaskUnCompleted(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_TaskUnCompleted extends _TaskUnCompleted {
  const _$_TaskUnCompleted({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskItemEvent.unCompleted(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskUnCompleted &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  _$TaskUnCompletedCopyWith<_TaskUnCompleted> get copyWith =>
      __$TaskUnCompletedCopyWithImpl<_TaskUnCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saved,
    required TResult Function(Task task) completed,
    required TResult Function(Task task) unCompleted,
  }) {
    return unCompleted(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
  }) {
    return unCompleted?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saved,
    TResult Function(Task task)? completed,
    TResult Function(Task task)? unCompleted,
    required TResult orElse(),
  }) {
    if (unCompleted != null) {
      return unCompleted(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskSaved value) saved,
    required TResult Function(_TaskCompleted value) completed,
    required TResult Function(_TaskUnCompleted value) unCompleted,
  }) {
    return unCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
  }) {
    return unCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskSaved value)? saved,
    TResult Function(_TaskCompleted value)? completed,
    TResult Function(_TaskUnCompleted value)? unCompleted,
    required TResult orElse(),
  }) {
    if (unCompleted != null) {
      return unCompleted(this);
    }
    return orElse();
  }
}

abstract class _TaskUnCompleted extends TaskItemEvent {
  const factory _TaskUnCompleted({required Task task}) = _$_TaskUnCompleted;
  const _TaskUnCompleted._() : super._();

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$TaskUnCompletedCopyWith<_TaskUnCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TaskItemStateTearOff {
  const _$TaskItemStateTearOff();

  _Initial initial({required Task task}) {
    return _Initial(
      task: task,
    );
  }
}

/// @nodoc
const $TaskItemState = _$TaskItemStateTearOff();

/// @nodoc
mixin _$TaskItemState {
  Task get task => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskItemStateCopyWith<TaskItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemStateCopyWith<$Res> {
  factory $TaskItemStateCopyWith(
          TaskItemState value, $Res Function(TaskItemState) then) =
      _$TaskItemStateCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
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
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $TaskItemStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TaskItemStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_Initial(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskItemState.initial(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) initial,
  }) {
    return initial(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? initial,
  }) {
    return initial?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TaskItemState {
  const factory _Initial({required Task task}) = _$_Initial;
  const _Initial._() : super._();

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
