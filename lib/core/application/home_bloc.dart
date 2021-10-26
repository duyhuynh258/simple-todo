import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';

enum TaskAction {
  create,
}

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required int selectedTabIndex,
    TaskAction? tabChangesForAction,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(selectedTabIndex: 0);
}

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState.initial());

  void changeTab(int index, {TaskAction? forAction}) {
    emit(
      state.copyWith(
        selectedTabIndex: index,
        tabChangesForAction: forAction,
      ),
    );
  }

  void changeToUnCompletedTab({TaskAction? forAction}) {
    if (state.selectedTabIndex == 0) {
      emit(state.copyWith(tabChangesForAction: forAction));
    } else {
      changeTab(0, forAction: forAction);
    }
  }
}
