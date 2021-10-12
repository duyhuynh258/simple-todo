// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskWatcherEventTearOff {
  const _$TaskWatcherEventTearOff();

  _TasksUpdated tasksUpdated({required List<Task> tasks}) {
    return _TasksUpdated(
      tasks: tasks,
    );
  }
}

/// @nodoc
const $TaskWatcherEvent = _$TaskWatcherEventTearOff();

/// @nodoc
mixin _$TaskWatcherEvent {
  List<Task> get tasks => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskWatcherEventCopyWith<TaskWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherEventCopyWith<$Res> {
  factory $TaskWatcherEventCopyWith(
          TaskWatcherEvent value, $Res Function(TaskWatcherEvent) then) =
      _$TaskWatcherEventCopyWithImpl<$Res>;
  $Res call({List<Task> tasks});
}

/// @nodoc
class _$TaskWatcherEventCopyWithImpl<$Res>
    implements $TaskWatcherEventCopyWith<$Res> {
  _$TaskWatcherEventCopyWithImpl(this._value, this._then);

  final TaskWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherEvent) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$TasksUpdatedCopyWith<$Res>
    implements $TaskWatcherEventCopyWith<$Res> {
  factory _$TasksUpdatedCopyWith(
          _TasksUpdated value, $Res Function(_TasksUpdated) then) =
      __$TasksUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$TasksUpdatedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$TasksUpdatedCopyWith<$Res> {
  __$TasksUpdatedCopyWithImpl(
      _TasksUpdated _value, $Res Function(_TasksUpdated) _then)
      : super(_value, (v) => _then(v as _TasksUpdated));

  @override
  _TasksUpdated get _value => super._value as _TasksUpdated;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_TasksUpdated(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_TasksUpdated extends _TasksUpdated {
  const _$_TasksUpdated({required this.tasks}) : super._();

  @override
  final List<Task> tasks;

  @override
  String toString() {
    return 'TaskWatcherEvent.tasksUpdated(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TasksUpdated &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$TasksUpdatedCopyWith<_TasksUpdated> get copyWith =>
      __$TasksUpdatedCopyWithImpl<_TasksUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
  }) {
    return tasksUpdated(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
  }) {
    return tasksUpdated?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    required TResult orElse(),
  }) {
    if (tasksUpdated != null) {
      return tasksUpdated(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
  }) {
    return tasksUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
  }) {
    return tasksUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    required TResult orElse(),
  }) {
    if (tasksUpdated != null) {
      return tasksUpdated(this);
    }
    return orElse();
  }
}

abstract class _TasksUpdated extends TaskWatcherEvent {
  const factory _TasksUpdated({required List<Task> tasks}) = _$_TasksUpdated;
  const _TasksUpdated._() : super._();

  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$TasksUpdatedCopyWith<_TasksUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TaskWatcherStateTearOff {
  const _$TaskWatcherStateTearOff();

  _TaskWatcherState call(
      {required bool isInProgress,
      required List<Task> allTasks,
      required PaginatedList<Task> unCompletedTasks,
      required PaginatedList<Task> completedTasks}) {
    return _TaskWatcherState(
      isInProgress: isInProgress,
      allTasks: allTasks,
      unCompletedTasks: unCompletedTasks,
      completedTasks: completedTasks,
    );
  }
}

/// @nodoc
const $TaskWatcherState = _$TaskWatcherStateTearOff();

/// @nodoc
mixin _$TaskWatcherState {
  bool get isInProgress => throw _privateConstructorUsedError;
  List<Task> get allTasks => throw _privateConstructorUsedError;
  PaginatedList<Task> get unCompletedTasks =>
      throw _privateConstructorUsedError;
  PaginatedList<Task> get completedTasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskWatcherStateCopyWith<TaskWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherStateCopyWith<$Res> {
  factory $TaskWatcherStateCopyWith(
          TaskWatcherState value, $Res Function(TaskWatcherState) then) =
      _$TaskWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isInProgress,
      List<Task> allTasks,
      PaginatedList<Task> unCompletedTasks,
      PaginatedList<Task> completedTasks});

  $PaginatedListCopyWith<Task, $Res> get unCompletedTasks;
  $PaginatedListCopyWith<Task, $Res> get completedTasks;
}

/// @nodoc
class _$TaskWatcherStateCopyWithImpl<$Res>
    implements $TaskWatcherStateCopyWith<$Res> {
  _$TaskWatcherStateCopyWithImpl(this._value, this._then);

  final TaskWatcherState _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherState) _then;

  @override
  $Res call({
    Object? isInProgress = freezed,
    Object? allTasks = freezed,
    Object? unCompletedTasks = freezed,
    Object? completedTasks = freezed,
  }) {
    return _then(_value.copyWith(
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: allTasks == freezed
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      unCompletedTasks: unCompletedTasks == freezed
          ? _value.unCompletedTasks
          : unCompletedTasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Task>,
      completedTasks: completedTasks == freezed
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Task>,
    ));
  }

  @override
  $PaginatedListCopyWith<Task, $Res> get unCompletedTasks {
    return $PaginatedListCopyWith<Task, $Res>(_value.unCompletedTasks, (value) {
      return _then(_value.copyWith(unCompletedTasks: value));
    });
  }

  @override
  $PaginatedListCopyWith<Task, $Res> get completedTasks {
    return $PaginatedListCopyWith<Task, $Res>(_value.completedTasks, (value) {
      return _then(_value.copyWith(completedTasks: value));
    });
  }
}

/// @nodoc
abstract class _$TaskWatcherStateCopyWith<$Res>
    implements $TaskWatcherStateCopyWith<$Res> {
  factory _$TaskWatcherStateCopyWith(
          _TaskWatcherState value, $Res Function(_TaskWatcherState) then) =
      __$TaskWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isInProgress,
      List<Task> allTasks,
      PaginatedList<Task> unCompletedTasks,
      PaginatedList<Task> completedTasks});

  @override
  $PaginatedListCopyWith<Task, $Res> get unCompletedTasks;
  @override
  $PaginatedListCopyWith<Task, $Res> get completedTasks;
}

/// @nodoc
class __$TaskWatcherStateCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res>
    implements _$TaskWatcherStateCopyWith<$Res> {
  __$TaskWatcherStateCopyWithImpl(
      _TaskWatcherState _value, $Res Function(_TaskWatcherState) _then)
      : super(_value, (v) => _then(v as _TaskWatcherState));

  @override
  _TaskWatcherState get _value => super._value as _TaskWatcherState;

  @override
  $Res call({
    Object? isInProgress = freezed,
    Object? allTasks = freezed,
    Object? unCompletedTasks = freezed,
    Object? completedTasks = freezed,
  }) {
    return _then(_TaskWatcherState(
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      allTasks: allTasks == freezed
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      unCompletedTasks: unCompletedTasks == freezed
          ? _value.unCompletedTasks
          : unCompletedTasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Task>,
      completedTasks: completedTasks == freezed
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Task>,
    ));
  }
}

/// @nodoc

class _$_TaskWatcherState extends _TaskWatcherState {
  const _$_TaskWatcherState(
      {required this.isInProgress,
      required this.allTasks,
      required this.unCompletedTasks,
      required this.completedTasks})
      : super._();

  @override
  final bool isInProgress;
  @override
  final List<Task> allTasks;
  @override
  final PaginatedList<Task> unCompletedTasks;
  @override
  final PaginatedList<Task> completedTasks;

  @override
  String toString() {
    return 'TaskWatcherState(isInProgress: $isInProgress, allTasks: $allTasks, unCompletedTasks: $unCompletedTasks, completedTasks: $completedTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskWatcherState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            const DeepCollectionEquality().equals(other.allTasks, allTasks) &&
            (identical(other.unCompletedTasks, unCompletedTasks) ||
                other.unCompletedTasks == unCompletedTasks) &&
            (identical(other.completedTasks, completedTasks) ||
                other.completedTasks == completedTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      const DeepCollectionEquality().hash(allTasks),
      unCompletedTasks,
      completedTasks);

  @JsonKey(ignore: true)
  @override
  _$TaskWatcherStateCopyWith<_TaskWatcherState> get copyWith =>
      __$TaskWatcherStateCopyWithImpl<_TaskWatcherState>(this, _$identity);
}

abstract class _TaskWatcherState extends TaskWatcherState {
  const factory _TaskWatcherState(
      {required bool isInProgress,
      required List<Task> allTasks,
      required PaginatedList<Task> unCompletedTasks,
      required PaginatedList<Task> completedTasks}) = _$_TaskWatcherState;
  const _TaskWatcherState._() : super._();

  @override
  bool get isInProgress;
  @override
  List<Task> get allTasks;
  @override
  PaginatedList<Task> get unCompletedTasks;
  @override
  PaginatedList<Task> get completedTasks;
  @override
  @JsonKey(ignore: true)
  _$TaskWatcherStateCopyWith<_TaskWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
