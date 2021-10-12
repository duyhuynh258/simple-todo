import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_bar_bloc.freezed.dart';

enum TaskAction {
  create,
}

@freezed
class TabBarState with _$TabBarState {
  const TabBarState._();

  const factory TabBarState(
      {required int selectedIndex,
      TaskAction? pageChangesForAction}) = _TabBarState;

  factory TabBarState.initial() => const TabBarState(selectedIndex: 0);
}

class TabBarBloc extends Cubit<TabBarState> {
  TabBarBloc() : super(TabBarState.initial());

  void changePage(int index, {TaskAction? forAction}) {
    emit(state.copyWith(selectedIndex: index, pageChangesForAction: forAction));
  }

  void changeToUnCompletedPage({TaskAction? forAction}) {
    if (state.selectedIndex == 0) {
      emit(state.copyWith(pageChangesForAction: forAction));
    } else {
      changePage(0, forAction: forAction);
    }
  }
}
