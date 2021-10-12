// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabBarStateTearOff {
  const _$TabBarStateTearOff();

  _TabBarState call({required int selectedIndex}) {
    return _TabBarState(
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $TabBarState = _$TabBarStateTearOff();

/// @nodoc
mixin _$TabBarState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarStateCopyWith<TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res> implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  final TabBarState _value;
  // ignore: unused_field
  final $Res Function(TabBarState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TabBarStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$TabBarStateCopyWith(
          _TabBarState value, $Res Function(_TabBarState) then) =
      __$TabBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class __$TabBarStateCopyWithImpl<$Res> extends _$TabBarStateCopyWithImpl<$Res>
    implements _$TabBarStateCopyWith<$Res> {
  __$TabBarStateCopyWithImpl(
      _TabBarState _value, $Res Function(_TabBarState) _then)
      : super(_value, (v) => _then(v as _TabBarState));

  @override
  _TabBarState get _value => super._value as _TabBarState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_TabBarState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabBarState extends _TabBarState {
  const _$_TabBarState({required this.selectedIndex}) : super._();

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'TabBarState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TabBarState &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  _$TabBarStateCopyWith<_TabBarState> get copyWith =>
      __$TabBarStateCopyWithImpl<_TabBarState>(this, _$identity);
}

abstract class _TabBarState extends TabBarState {
  const factory _TabBarState({required int selectedIndex}) = _$_TabBarState;
  const _TabBarState._() : super._();

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$TabBarStateCopyWith<_TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
