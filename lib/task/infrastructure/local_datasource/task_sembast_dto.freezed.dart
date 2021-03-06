// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_sembast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskSembastDTO _$TaskSembastDTOFromJson(Map<String, dynamic> json) {
  return _TaskSembastDTO.fromJson(json);
}

/// @nodoc
class _$TaskSembastDTOTearOff {
  const _$TaskSembastDTOTearOff();

  _TaskSembastDTO call(
      {required String id,
      required String body,
      required bool isCompleted,
      required bool isSynchronized,
      @LocalTimestampConverter() required Timestamp localTimeStamp}) {
    return _TaskSembastDTO(
      id: id,
      body: body,
      isCompleted: isCompleted,
      isSynchronized: isSynchronized,
      localTimeStamp: localTimeStamp,
    );
  }

  TaskSembastDTO fromJson(Map<String, Object?> json) {
    return TaskSembastDTO.fromJson(json);
  }
}

/// @nodoc
const $TaskSembastDTO = _$TaskSembastDTOTearOff();

/// @nodoc
mixin _$TaskSembastDTO {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isSynchronized => throw _privateConstructorUsedError;
  @LocalTimestampConverter()
  Timestamp get localTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskSembastDTOCopyWith<TaskSembastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSembastDTOCopyWith<$Res> {
  factory $TaskSembastDTOCopyWith(
          TaskSembastDTO value, $Res Function(TaskSembastDTO) then) =
      _$TaskSembastDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String body,
      bool isCompleted,
      bool isSynchronized,
      @LocalTimestampConverter() Timestamp localTimeStamp});
}

/// @nodoc
class _$TaskSembastDTOCopyWithImpl<$Res>
    implements $TaskSembastDTOCopyWith<$Res> {
  _$TaskSembastDTOCopyWithImpl(this._value, this._then);

  final TaskSembastDTO _value;
  // ignore: unused_field
  final $Res Function(TaskSembastDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? isCompleted = freezed,
    Object? isSynchronized = freezed,
    Object? localTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSynchronized: isSynchronized == freezed
          ? _value.isSynchronized
          : isSynchronized // ignore: cast_nullable_to_non_nullable
              as bool,
      localTimeStamp: localTimeStamp == freezed
          ? _value.localTimeStamp
          : localTimeStamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
abstract class _$TaskSembastDTOCopyWith<$Res>
    implements $TaskSembastDTOCopyWith<$Res> {
  factory _$TaskSembastDTOCopyWith(
          _TaskSembastDTO value, $Res Function(_TaskSembastDTO) then) =
      __$TaskSembastDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String body,
      bool isCompleted,
      bool isSynchronized,
      @LocalTimestampConverter() Timestamp localTimeStamp});
}

/// @nodoc
class __$TaskSembastDTOCopyWithImpl<$Res>
    extends _$TaskSembastDTOCopyWithImpl<$Res>
    implements _$TaskSembastDTOCopyWith<$Res> {
  __$TaskSembastDTOCopyWithImpl(
      _TaskSembastDTO _value, $Res Function(_TaskSembastDTO) _then)
      : super(_value, (v) => _then(v as _TaskSembastDTO));

  @override
  _TaskSembastDTO get _value => super._value as _TaskSembastDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? isCompleted = freezed,
    Object? isSynchronized = freezed,
    Object? localTimeStamp = freezed,
  }) {
    return _then(_TaskSembastDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSynchronized: isSynchronized == freezed
          ? _value.isSynchronized
          : isSynchronized // ignore: cast_nullable_to_non_nullable
              as bool,
      localTimeStamp: localTimeStamp == freezed
          ? _value.localTimeStamp
          : localTimeStamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskSembastDTO implements _TaskSembastDTO {
  _$_TaskSembastDTO(
      {required this.id,
      required this.body,
      required this.isCompleted,
      required this.isSynchronized,
      @LocalTimestampConverter() required this.localTimeStamp});

  factory _$_TaskSembastDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskSembastDTOFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final bool isCompleted;
  @override
  final bool isSynchronized;
  @override
  @LocalTimestampConverter()
  final Timestamp localTimeStamp;

  @override
  String toString() {
    return 'TaskSembastDTO(id: $id, body: $body, isCompleted: $isCompleted, isSynchronized: $isSynchronized, localTimeStamp: $localTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskSembastDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isSynchronized, isSynchronized) ||
                other.isSynchronized == isSynchronized) &&
            (identical(other.localTimeStamp, localTimeStamp) ||
                other.localTimeStamp == localTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, body, isCompleted, isSynchronized, localTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$TaskSembastDTOCopyWith<_TaskSembastDTO> get copyWith =>
      __$TaskSembastDTOCopyWithImpl<_TaskSembastDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskSembastDTOToJson(this);
  }
}

abstract class _TaskSembastDTO implements TaskSembastDTO {
  factory _TaskSembastDTO(
          {required String id,
          required String body,
          required bool isCompleted,
          required bool isSynchronized,
          @LocalTimestampConverter() required Timestamp localTimeStamp}) =
      _$_TaskSembastDTO;

  factory _TaskSembastDTO.fromJson(Map<String, dynamic> json) =
      _$_TaskSembastDTO.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  bool get isCompleted;
  @override
  bool get isSynchronized;
  @override
  @LocalTimestampConverter()
  Timestamp get localTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$TaskSembastDTOCopyWith<_TaskSembastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
