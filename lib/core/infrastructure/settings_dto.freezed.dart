// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsDTO _$SettingsDTOFromJson(Map<String, dynamic> json) {
  return _SettingsDTO.fromJson(json);
}

/// @nodoc
class _$SettingsDTOTearOff {
  const _$SettingsDTOTearOff();

  _SettingsDTO call(
      {required bool vibration,
      required String theme,
      required double fontSize}) {
    return _SettingsDTO(
      vibration: vibration,
      theme: theme,
      fontSize: fontSize,
    );
  }

  SettingsDTO fromJson(Map<String, Object?> json) {
    return SettingsDTO.fromJson(json);
  }
}

/// @nodoc
const $SettingsDTO = _$SettingsDTOTearOff();

/// @nodoc
mixin _$SettingsDTO {
  bool get vibration => throw _privateConstructorUsedError;
  String get theme => throw _privateConstructorUsedError;
  double get fontSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDTOCopyWith<SettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDTOCopyWith<$Res> {
  factory $SettingsDTOCopyWith(
          SettingsDTO value, $Res Function(SettingsDTO) then) =
      _$SettingsDTOCopyWithImpl<$Res>;
  $Res call({bool vibration, String theme, double fontSize});
}

/// @nodoc
class _$SettingsDTOCopyWithImpl<$Res> implements $SettingsDTOCopyWith<$Res> {
  _$SettingsDTOCopyWithImpl(this._value, this._then);

  final SettingsDTO _value;
  // ignore: unused_field
  final $Res Function(SettingsDTO) _then;

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
abstract class _$SettingsDTOCopyWith<$Res>
    implements $SettingsDTOCopyWith<$Res> {
  factory _$SettingsDTOCopyWith(
          _SettingsDTO value, $Res Function(_SettingsDTO) then) =
      __$SettingsDTOCopyWithImpl<$Res>;
  @override
  $Res call({bool vibration, String theme, double fontSize});
}

/// @nodoc
class __$SettingsDTOCopyWithImpl<$Res> extends _$SettingsDTOCopyWithImpl<$Res>
    implements _$SettingsDTOCopyWith<$Res> {
  __$SettingsDTOCopyWithImpl(
      _SettingsDTO _value, $Res Function(_SettingsDTO) _then)
      : super(_value, (v) => _then(v as _SettingsDTO));

  @override
  _SettingsDTO get _value => super._value as _SettingsDTO;

  @override
  $Res call({
    Object? vibration = freezed,
    Object? theme = freezed,
    Object? fontSize = freezed,
  }) {
    return _then(_SettingsDTO(
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
class _$_SettingsDTO extends _SettingsDTO {
  const _$_SettingsDTO(
      {required this.vibration, required this.theme, required this.fontSize})
      : super._();

  factory _$_SettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsDTOFromJson(json);

  @override
  final bool vibration;
  @override
  final String theme;
  @override
  final double fontSize;

  @override
  String toString() {
    return 'SettingsDTO(vibration: $vibration, theme: $theme, fontSize: $fontSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsDTO &&
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
  _$SettingsDTOCopyWith<_SettingsDTO> get copyWith =>
      __$SettingsDTOCopyWithImpl<_SettingsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsDTOToJson(this);
  }
}

abstract class _SettingsDTO extends SettingsDTO {
  const factory _SettingsDTO(
      {required bool vibration,
      required String theme,
      required double fontSize}) = _$_SettingsDTO;
  const _SettingsDTO._() : super._();

  factory _SettingsDTO.fromJson(Map<String, dynamic> json) =
      _$_SettingsDTO.fromJson;

  @override
  bool get vibration;
  @override
  String get theme;
  @override
  double get fontSize;
  @override
  @JsonKey(ignore: true)
  _$SettingsDTOCopyWith<_SettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
