// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_firestore_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskFirestoreDTO _$TaskFirestoreDTOFromJson(Map<String, dynamic> json) {
  return _TaskFirestoreDTO.fromJson(json);
}

/// @nodoc
class _$TaskFirestoreDTOTearOff {
  const _$TaskFirestoreDTOTearOff();

  _TaskFirestoreDTO call(
      {@JsonKey(ignore: true) String? id,
      required String body,
      required bool isCompleted,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _TaskFirestoreDTO(
      id: id,
      body: body,
      isCompleted: isCompleted,
      serverTimeStamp: serverTimeStamp,
    );
  }

  TaskFirestoreDTO fromJson(Map<String, Object?> json) {
    return TaskFirestoreDTO.fromJson(json);
  }
}

/// @nodoc
const $TaskFirestoreDTO = _$TaskFirestoreDTOTearOff();

/// @nodoc
mixin _$TaskFirestoreDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskFirestoreDTOCopyWith<TaskFirestoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFirestoreDTOCopyWith<$Res> {
  factory $TaskFirestoreDTOCopyWith(
          TaskFirestoreDTO value, $Res Function(TaskFirestoreDTO) then) =
      _$TaskFirestoreDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String body,
      bool isCompleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$TaskFirestoreDTOCopyWithImpl<$Res>
    implements $TaskFirestoreDTOCopyWith<$Res> {
  _$TaskFirestoreDTOCopyWithImpl(this._value, this._then);

  final TaskFirestoreDTO _value;
  // ignore: unused_field
  final $Res Function(TaskFirestoreDTO) _then;

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
abstract class _$TaskFirestoreDTOCopyWith<$Res>
    implements $TaskFirestoreDTOCopyWith<$Res> {
  factory _$TaskFirestoreDTOCopyWith(
          _TaskFirestoreDTO value, $Res Function(_TaskFirestoreDTO) then) =
      __$TaskFirestoreDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String body,
      bool isCompleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$TaskFirestoreDTOCopyWithImpl<$Res>
    extends _$TaskFirestoreDTOCopyWithImpl<$Res>
    implements _$TaskFirestoreDTOCopyWith<$Res> {
  __$TaskFirestoreDTOCopyWithImpl(
      _TaskFirestoreDTO _value, $Res Function(_TaskFirestoreDTO) _then)
      : super(_value, (v) => _then(v as _TaskFirestoreDTO));

  @override
  _TaskFirestoreDTO get _value => super._value as _TaskFirestoreDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? isCompleted = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_TaskFirestoreDTO(
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
class _$_TaskFirestoreDTO implements _TaskFirestoreDTO {
  _$_TaskFirestoreDTO(
      {@JsonKey(ignore: true) this.id,
      required this.body,
      required this.isCompleted,
      @ServerTimestampConverter() required this.serverTimeStamp});

  factory _$_TaskFirestoreDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskFirestoreDTOFromJson(json);

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
    return 'TaskFirestoreDTO(id: $id, body: $body, isCompleted: $isCompleted, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskFirestoreDTO &&
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
  _$TaskFirestoreDTOCopyWith<_TaskFirestoreDTO> get copyWith =>
      __$TaskFirestoreDTOCopyWithImpl<_TaskFirestoreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskFirestoreDTOToJson(this);
  }
}

abstract class _TaskFirestoreDTO implements TaskFirestoreDTO {
  factory _TaskFirestoreDTO(
          {@JsonKey(ignore: true) String? id,
          required String body,
          required bool isCompleted,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_TaskFirestoreDTO;

  factory _TaskFirestoreDTO.fromJson(Map<String, dynamic> json) =
      _$_TaskFirestoreDTO.fromJson;

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
  _$TaskFirestoreDTOCopyWith<_TaskFirestoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
