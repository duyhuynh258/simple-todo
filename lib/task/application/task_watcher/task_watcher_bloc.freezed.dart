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

  _CreatedDraftTask createdDraftTask() {
    return const _CreatedDraftTask();
  }

  _TaskEndEdited taskEndEdited({required Task task}) {
    return _TaskEndEdited(
      task: task,
    );
  }

  _AllTasksRequested allTasksRequested() {
    return const _AllTasksRequested();
  }
}

/// @nodoc
const $TaskWatcherEvent = _$TaskWatcherEventTearOff();

/// @nodoc
mixin _$TaskWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
    required TResult Function() createdDraftTask,
    required TResult Function(Task task) taskEndEdited,
    required TResult Function() allTasksRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
    required TResult Function(_CreatedDraftTask value) createdDraftTask,
    required TResult Function(_TaskEndEdited value) taskEndEdited,
    required TResult Function(_AllTasksRequested value) allTasksRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherEventCopyWith<$Res> {
  factory $TaskWatcherEventCopyWith(
          TaskWatcherEvent value, $Res Function(TaskWatcherEvent) then) =
      _$TaskWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskWatcherEventCopyWithImpl<$Res>
    implements $TaskWatcherEventCopyWith<$Res> {
  _$TaskWatcherEventCopyWithImpl(this._value, this._then);

  final TaskWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TaskWatcherEvent) _then;
}

/// @nodoc
abstract class _$TasksUpdatedCopyWith<$Res> {
  factory _$TasksUpdatedCopyWith(
          _TasksUpdated value, $Res Function(_TasksUpdated) then) =
      __$TasksUpdatedCopyWithImpl<$Res>;
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
    required TResult Function() createdDraftTask,
    required TResult Function(Task task) taskEndEdited,
    required TResult Function() allTasksRequested,
  }) {
    return tasksUpdated(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
  }) {
    return tasksUpdated?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
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
    required TResult Function(_CreatedDraftTask value) createdDraftTask,
    required TResult Function(_TaskEndEdited value) taskEndEdited,
    required TResult Function(_AllTasksRequested value) allTasksRequested,
  }) {
    return tasksUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
  }) {
    return tasksUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
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

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$TasksUpdatedCopyWith<_TasksUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedDraftTaskCopyWith<$Res> {
  factory _$CreatedDraftTaskCopyWith(
          _CreatedDraftTask value, $Res Function(_CreatedDraftTask) then) =
      __$CreatedDraftTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedDraftTaskCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$CreatedDraftTaskCopyWith<$Res> {
  __$CreatedDraftTaskCopyWithImpl(
      _CreatedDraftTask _value, $Res Function(_CreatedDraftTask) _then)
      : super(_value, (v) => _then(v as _CreatedDraftTask));

  @override
  _CreatedDraftTask get _value => super._value as _CreatedDraftTask;
}

/// @nodoc

class _$_CreatedDraftTask extends _CreatedDraftTask {
  const _$_CreatedDraftTask() : super._();

  @override
  String toString() {
    return 'TaskWatcherEvent.createdDraftTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreatedDraftTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
    required TResult Function() createdDraftTask,
    required TResult Function(Task task) taskEndEdited,
    required TResult Function() allTasksRequested,
  }) {
    return createdDraftTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
  }) {
    return createdDraftTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
    required TResult orElse(),
  }) {
    if (createdDraftTask != null) {
      return createdDraftTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
    required TResult Function(_CreatedDraftTask value) createdDraftTask,
    required TResult Function(_TaskEndEdited value) taskEndEdited,
    required TResult Function(_AllTasksRequested value) allTasksRequested,
  }) {
    return createdDraftTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
  }) {
    return createdDraftTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
    required TResult orElse(),
  }) {
    if (createdDraftTask != null) {
      return createdDraftTask(this);
    }
    return orElse();
  }
}

abstract class _CreatedDraftTask extends TaskWatcherEvent {
  const factory _CreatedDraftTask() = _$_CreatedDraftTask;
  const _CreatedDraftTask._() : super._();
}

/// @nodoc
abstract class _$TaskEndEditedCopyWith<$Res> {
  factory _$TaskEndEditedCopyWith(
          _TaskEndEdited value, $Res Function(_TaskEndEdited) then) =
      __$TaskEndEditedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$TaskEndEditedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$TaskEndEditedCopyWith<$Res> {
  __$TaskEndEditedCopyWithImpl(
      _TaskEndEdited _value, $Res Function(_TaskEndEdited) _then)
      : super(_value, (v) => _then(v as _TaskEndEdited));

  @override
  _TaskEndEdited get _value => super._value as _TaskEndEdited;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_TaskEndEdited(
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

class _$_TaskEndEdited extends _TaskEndEdited {
  const _$_TaskEndEdited({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskWatcherEvent.taskEndEdited(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskEndEdited &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  _$TaskEndEditedCopyWith<_TaskEndEdited> get copyWith =>
      __$TaskEndEditedCopyWithImpl<_TaskEndEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
    required TResult Function() createdDraftTask,
    required TResult Function(Task task) taskEndEdited,
    required TResult Function() allTasksRequested,
  }) {
    return taskEndEdited(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
  }) {
    return taskEndEdited?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
    required TResult orElse(),
  }) {
    if (taskEndEdited != null) {
      return taskEndEdited(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
    required TResult Function(_CreatedDraftTask value) createdDraftTask,
    required TResult Function(_TaskEndEdited value) taskEndEdited,
    required TResult Function(_AllTasksRequested value) allTasksRequested,
  }) {
    return taskEndEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
  }) {
    return taskEndEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
    required TResult orElse(),
  }) {
    if (taskEndEdited != null) {
      return taskEndEdited(this);
    }
    return orElse();
  }
}

abstract class _TaskEndEdited extends TaskWatcherEvent {
  const factory _TaskEndEdited({required Task task}) = _$_TaskEndEdited;
  const _TaskEndEdited._() : super._();

  Task get task;
  @JsonKey(ignore: true)
  _$TaskEndEditedCopyWith<_TaskEndEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AllTasksRequestedCopyWith<$Res> {
  factory _$AllTasksRequestedCopyWith(
          _AllTasksRequested value, $Res Function(_AllTasksRequested) then) =
      __$AllTasksRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AllTasksRequestedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res>
    implements _$AllTasksRequestedCopyWith<$Res> {
  __$AllTasksRequestedCopyWithImpl(
      _AllTasksRequested _value, $Res Function(_AllTasksRequested) _then)
      : super(_value, (v) => _then(v as _AllTasksRequested));

  @override
  _AllTasksRequested get _value => super._value as _AllTasksRequested;
}

/// @nodoc

class _$_AllTasksRequested extends _AllTasksRequested {
  const _$_AllTasksRequested() : super._();

  @override
  String toString() {
    return 'TaskWatcherEvent.allTasksRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AllTasksRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) tasksUpdated,
    required TResult Function() createdDraftTask,
    required TResult Function(Task task) taskEndEdited,
    required TResult Function() allTasksRequested,
  }) {
    return allTasksRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
  }) {
    return allTasksRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? tasksUpdated,
    TResult Function()? createdDraftTask,
    TResult Function(Task task)? taskEndEdited,
    TResult Function()? allTasksRequested,
    required TResult orElse(),
  }) {
    if (allTasksRequested != null) {
      return allTasksRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksUpdated value) tasksUpdated,
    required TResult Function(_CreatedDraftTask value) createdDraftTask,
    required TResult Function(_TaskEndEdited value) taskEndEdited,
    required TResult Function(_AllTasksRequested value) allTasksRequested,
  }) {
    return allTasksRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
  }) {
    return allTasksRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksUpdated value)? tasksUpdated,
    TResult Function(_CreatedDraftTask value)? createdDraftTask,
    TResult Function(_TaskEndEdited value)? taskEndEdited,
    TResult Function(_AllTasksRequested value)? allTasksRequested,
    required TResult orElse(),
  }) {
    if (allTasksRequested != null) {
      return allTasksRequested(this);
    }
    return orElse();
  }
}

abstract class _AllTasksRequested extends TaskWatcherEvent {
  const factory _AllTasksRequested() = _$_AllTasksRequested;
  const _AllTasksRequested._() : super._();
}

/// @nodoc
class _$TaskWatcherStateTearOff {
  const _$TaskWatcherStateTearOff();

  _TaskWatcherState call(
      {required bool isInProgress,
      required List<Task> allTasks,
      required bool isNextUnCompletedTasksAvailable,
      required bool isNextCompletedTasksAvailable,
      TaskFailure? failure}) {
    return _TaskWatcherState(
      isInProgress: isInProgress,
      allTasks: allTasks,
      isNextUnCompletedTasksAvailable: isNextUnCompletedTasksAvailable,
      isNextCompletedTasksAvailable: isNextCompletedTasksAvailable,
      failure: failure,
    );
  }
}

/// @nodoc
const $TaskWatcherState = _$TaskWatcherStateTearOff();

/// @nodoc
mixin _$TaskWatcherState {
  bool get isInProgress => throw _privateConstructorUsedError;
  List<Task> get allTasks => throw _privateConstructorUsedError;
  bool get isNextUnCompletedTasksAvailable =>
      throw _privateConstructorUsedError;
  bool get isNextCompletedTasksAvailable => throw _privateConstructorUsedError;
  TaskFailure? get failure => throw _privateConstructorUsedError;

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
      bool isNextUnCompletedTasksAvailable,
      bool isNextCompletedTasksAvailable,
      TaskFailure? failure});

  $TaskFailureCopyWith<$Res>? get failure;
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
    Object? isNextUnCompletedTasksAvailable = freezed,
    Object? isNextCompletedTasksAvailable = freezed,
    Object? failure = freezed,
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
      isNextUnCompletedTasksAvailable: isNextUnCompletedTasksAvailable ==
              freezed
          ? _value.isNextUnCompletedTasksAvailable
          : isNextUnCompletedTasksAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isNextCompletedTasksAvailable: isNextCompletedTasksAvailable == freezed
          ? _value.isNextCompletedTasksAvailable
          : isNextCompletedTasksAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ));
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
abstract class _$TaskWatcherStateCopyWith<$Res>
    implements $TaskWatcherStateCopyWith<$Res> {
  factory _$TaskWatcherStateCopyWith(
          _TaskWatcherState value, $Res Function(_TaskWatcherState) then) =
      __$TaskWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isInProgress,
      List<Task> allTasks,
      bool isNextUnCompletedTasksAvailable,
      bool isNextCompletedTasksAvailable,
      TaskFailure? failure});

  @override
  $TaskFailureCopyWith<$Res>? get failure;
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
    Object? isNextUnCompletedTasksAvailable = freezed,
    Object? isNextCompletedTasksAvailable = freezed,
    Object? failure = freezed,
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
      isNextUnCompletedTasksAvailable: isNextUnCompletedTasksAvailable ==
              freezed
          ? _value.isNextUnCompletedTasksAvailable
          : isNextUnCompletedTasksAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isNextCompletedTasksAvailable: isNextCompletedTasksAvailable == freezed
          ? _value.isNextCompletedTasksAvailable
          : isNextCompletedTasksAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TaskFailure?,
    ));
  }
}

/// @nodoc

class _$_TaskWatcherState extends _TaskWatcherState {
  const _$_TaskWatcherState(
      {required this.isInProgress,
      required this.allTasks,
      required this.isNextUnCompletedTasksAvailable,
      required this.isNextCompletedTasksAvailable,
      this.failure})
      : super._();

  @override
  final bool isInProgress;
  @override
  final List<Task> allTasks;
  @override
  final bool isNextUnCompletedTasksAvailable;
  @override
  final bool isNextCompletedTasksAvailable;
  @override
  final TaskFailure? failure;

  @override
  String toString() {
    return 'TaskWatcherState(isInProgress: $isInProgress, allTasks: $allTasks, isNextUnCompletedTasksAvailable: $isNextUnCompletedTasksAvailable, isNextCompletedTasksAvailable: $isNextCompletedTasksAvailable, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskWatcherState &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            const DeepCollectionEquality().equals(other.allTasks, allTasks) &&
            (identical(other.isNextUnCompletedTasksAvailable,
                    isNextUnCompletedTasksAvailable) ||
                other.isNextUnCompletedTasksAvailable ==
                    isNextUnCompletedTasksAvailable) &&
            (identical(other.isNextCompletedTasksAvailable,
                    isNextCompletedTasksAvailable) ||
                other.isNextCompletedTasksAvailable ==
                    isNextCompletedTasksAvailable) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInProgress,
      const DeepCollectionEquality().hash(allTasks),
      isNextUnCompletedTasksAvailable,
      isNextCompletedTasksAvailable,
      failure);

  @JsonKey(ignore: true)
  @override
  _$TaskWatcherStateCopyWith<_TaskWatcherState> get copyWith =>
      __$TaskWatcherStateCopyWithImpl<_TaskWatcherState>(this, _$identity);
}

abstract class _TaskWatcherState extends TaskWatcherState {
  const factory _TaskWatcherState(
      {required bool isInProgress,
      required List<Task> allTasks,
      required bool isNextUnCompletedTasksAvailable,
      required bool isNextCompletedTasksAvailable,
      TaskFailure? failure}) = _$_TaskWatcherState;
  const _TaskWatcherState._() : super._();

  @override
  bool get isInProgress;
  @override
  List<Task> get allTasks;
  @override
  bool get isNextUnCompletedTasksAvailable;
  @override
  bool get isNextCompletedTasksAvailable;
  @override
  TaskFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$TaskWatcherStateCopyWith<_TaskWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
