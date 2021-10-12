import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_bar_bloc.freezed.dart';

@freezed
class TabBarState with _$TabBarState {
  const TabBarState._();

  const factory TabBarState({required int selectedIndex}) = _TabBarState;

  factory TabBarState.initial() => const TabBarState(selectedIndex: 0);
}

class TabBarBloc extends Cubit<TabBarState> {
  TabBarBloc() : super(TabBarState.initial());

  void changePage(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
