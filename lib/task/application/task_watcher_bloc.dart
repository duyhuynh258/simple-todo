import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_watcher_bloc.freezed.dart';

@freezed
class TaskWatcherState with _$TaskWatcherState {
  const TaskWatcherState._();

  const factory TaskWatcherState() = _TaskWatcherState;

  factory TaskWatcherState.initial() => const TaskWatcherState();
}

class TaskWatcherBloc extends Cubit<TaskWatcherState> {
  TaskWatcherBloc() : super(TaskWatcherState.initial());
}
