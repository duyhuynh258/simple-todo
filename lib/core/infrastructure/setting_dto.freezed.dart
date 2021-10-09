// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingDTO _$SettingDTOFromJson(Map<String, dynamic> json) {
  return _SettingDTO.fromJson(json);
}

/// @nodoc
class _$SettingDTOTearOff {
  const _$SettingDTOTearOff();

  _SettingDTO call(
      {required bool vibration,
      required String theme,
      required double fontSize}) {
    return _SettingDTO(
      vibration: vibration,
      theme: theme,
      fontSize: fontSize,
    );
  }

  SettingDTO fromJson(Map<String, Object?> json) {
    return SettingDTO.fromJson(json);
  }
}

/// @nodoc
const $SettingDTO = _$SettingDTOTearOff();

/// @nodoc
mixin _$SettingDTO {
  bool get vibration => throw _privateConstructorUsedError;
  String get theme => throw _privateConstructorUsedError;
  double get fontSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingDTOCopyWith<SettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDTOCopyWith<$Res> {
  factory $SettingDTOCopyWith(
          SettingDTO value, $Res Function(SettingDTO) then) =
      _$SettingDTOCopyWithImpl<$Res>;
  $Res call({bool vibration, String theme, double fontSize});
}

/// @nodoc
class _$SettingDTOCopyWithImpl<$Res> implements $SettingDTOCopyWith<$Res> {
  _$SettingDTOCopyWithImpl(this._value, this._then);

  final SettingDTO _value;
  // ignore: unused_field
  final $Res Function(SettingDTO) _then;

  @override
  $Res call({
    Object? vibration = freezed,
    Object? theme = freezed,
    Object? fontSize = freezed,
  }) {
    return _then(_value.copyWith(
      vibration: vibration == freezed
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SettingDTOCopyWith<$Res> implements $SettingDTOCopyWith<$Res> {
  factory _$SettingDTOCopyWith(
          _SettingDTO value, $Res Function(_SettingDTO) then) =
      __$SettingDTOCopyWithImpl<$Res>;
  @override
  $Res call({bool vibration, String theme, double fontSize});
}

/// @nodoc
class __$SettingDTOCopyWithImpl<$Res> extends _$SettingDTOCopyWithImpl<$Res>
    implements _$SettingDTOCopyWith<$Res> {
  __$SettingDTOCopyWithImpl(
      _SettingDTO _value, $Res Function(_SettingDTO) _then)
      : super(_value, (v) => _then(v as _SettingDTO));

  @override
  _SettingDTO get _value => super._value as _SettingDTO;

  @override
  $Res call({
    Object? vibration = freezed,
    Object? theme = freezed,
    Object? fontSize = freezed,
  }) {
    return _then(_SettingDTO(
      vibration: vibration == freezed
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingDTO extends _SettingDTO {
  const _$_SettingDTO(
      {required this.vibration, required this.theme, required this.fontSize})
      : super._();

  factory _$_SettingDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SettingDTOFromJson(json);

  @override
  final bool vibration;
  @override
  final String theme;
  @override
  final double fontSize;

  @override
  String toString() {
    return 'SettingDTO(vibration: $vibration, theme: $theme, fontSize: $fontSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingDTO &&
            (identical(other.vibration, vibration) ||
                other.vibration == vibration) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vibration, theme, fontSize);

  @JsonKey(ignore: true)
  @override
  _$SettingDTOCopyWith<_SettingDTO> get copyWith =>
      __$SettingDTOCopyWithImpl<_SettingDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingDTOToJson(this);
  }
}

abstract class _SettingDTO extends SettingDTO {
  const factory _SettingDTO(
      {required bool vibration,
      required String theme,
      required double fontSize}) = _$_SettingDTO;
  const _SettingDTO._() : super._();

  factory _SettingDTO.fromJson(Map<String, dynamic> json) =
      _$_SettingDTO.fromJson;

  @override
  bool get vibration;
  @override
  String get theme;
  @override
  double get fontSize;
  @override
  @JsonKey(ignore: true)
  _$SettingDTOCopyWith<_SettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
