// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeState call({required AppTheme appTheme, Failure? failure}) {
    return _ThemeState(
      appTheme: appTheme,
      failure: failure,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  AppTheme get appTheme => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({AppTheme appTheme, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? appTheme = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      appTheme: appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme appTheme, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object? appTheme = freezed,
    Object? failure = freezed,
  }) {
    return _then(_ThemeState(
      appTheme: appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_ThemeState extends _ThemeState {
  const _$_ThemeState({required this.appTheme, this.failure}) : super._();

  @override
  final AppTheme appTheme;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ThemeState(appTheme: $appTheme, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeState &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appTheme, failure);

  @JsonKey(ignore: true)
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState extends ThemeState {
  const factory _ThemeState({required AppTheme appTheme, Failure? failure}) =
      _$_ThemeState;
  const _ThemeState._() : super._();

  @override
  AppTheme get appTheme;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
