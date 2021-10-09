// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) {
  return _TaskDTO.fromJson(json);
}

/// @nodoc
class _$TaskDTOTearOff {
  const _$TaskDTOTearOff();

  _TaskDTO call(
      {@JsonKey(ignore: true) String? id,
      required String body,
      required bool isCompleted,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _TaskDTO(
      id: id,
      body: body,
      isCompleted: isCompleted,
      serverTimeStamp: serverTimeStamp,
    );
  }

  TaskDTO fromJson(Map<String, Object?> json) {
    return TaskDTO.fromJson(json);
  }
}

/// @nodoc
const $TaskDTO = _$TaskDTOTearOff();

/// @nodoc
mixin _$TaskDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDTOCopyWith<TaskDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDTOCopyWith<$Res> {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) then) =
      _$TaskDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String body,
      bool isCompleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$TaskDTOCopyWithImpl<$Res> implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._value, this._then);

  final TaskDTO _value;
  // ignore: unused_field
  final $Res Function(TaskDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? isCompleted = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$TaskDTOCopyWith(_TaskDTO value, $Res Function(_TaskDTO) then) =
      __$TaskDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String body,
      bool isCompleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$TaskDTOCopyWithImpl<$Res> extends _$TaskDTOCopyWithImpl<$Res>
    implements _$TaskDTOCopyWith<$Res> {
  __$TaskDTOCopyWithImpl(_TaskDTO _value, $Res Function(_TaskDTO) _then)
      : super(_value, (v) => _then(v as _TaskDTO));

  @override
  _TaskDTO get _value => super._value as _TaskDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? isCompleted = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_TaskDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDTO implements _TaskDTO {
  _$_TaskDTO(
      {@JsonKey(ignore: true) this.id,
      required this.body,
      required this.isCompleted,
      @ServerTimestampConverter() required this.serverTimeStamp});

  factory _$_TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String body;
  @override
  final bool isCompleted;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'TaskDTO(id: $id, body: $body, isCompleted: $isCompleted, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, body, isCompleted, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$TaskDTOCopyWith<_TaskDTO> get copyWith =>
      __$TaskDTOCopyWithImpl<_TaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDTOToJson(this);
  }
}

abstract class _TaskDTO implements TaskDTO {
  factory _TaskDTO(
          {@JsonKey(ignore: true) String? id,
          required String body,
          required bool isCompleted,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_TaskDTO;

  factory _TaskDTO.fromJson(Map<String, dynamic> json) = _$_TaskDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get body;
  @override
  bool get isCompleted;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$TaskDTOCopyWith<_TaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
