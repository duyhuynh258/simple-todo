// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _ServerError serverError({String? errorMessage}) {
    return _ServerError(
      errorMessage: errorMessage,
    );
  }

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _CancelledByUser cancelledByUser() {
    return const _CancelledByUser();
  }

  _UserNotFound userNotFound() {
    return const _UserNotFound();
  }

  _InvalidEmail invalidEmail() {
    return const _InvalidEmail();
  }

  _EmailNotVerified emailNotVerified() {
    return const _EmailNotVerified();
  }

  _EmailAlreadyInUse emailAlreadyInUse() {
    return const _EmailAlreadyInUse();
  }

  _WrongEmailAndPasswordCombination wrongEmailAndPasswordCombination() {
    return const _WrongEmailAndPasswordCombination();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_ServerError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthFailure.serverError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return serverError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return serverError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError({String? errorMessage}) = _$_ServerError;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AuthFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$CancelledByUserCopyWith<$Res> {
  factory _$CancelledByUserCopyWith(
          _CancelledByUser value, $Res Function(_CancelledByUser) then) =
      __$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$CancelledByUserCopyWith<$Res> {
  __$CancelledByUserCopyWithImpl(
      _CancelledByUser _value, $Res Function(_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _CancelledByUser));

  @override
  _CancelledByUser get _value => super._value as _CancelledByUser;
}

/// @nodoc

class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailCopyWith<$Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail _value, $Res Function(_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _InvalidEmail));

  @override
  _InvalidEmail get _value => super._value as _InvalidEmail;
}

/// @nodoc

class _$_InvalidEmail implements _InvalidEmail {
  const _$_InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements AuthFailure {
  const factory _InvalidEmail() = _$_InvalidEmail;
}

/// @nodoc
abstract class _$EmailNotVerifiedCopyWith<$Res> {
  factory _$EmailNotVerifiedCopyWith(
          _EmailNotVerified value, $Res Function(_EmailNotVerified) then) =
      __$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$EmailNotVerifiedCopyWith<$Res> {
  __$EmailNotVerifiedCopyWithImpl(
      _EmailNotVerified _value, $Res Function(_EmailNotVerified) _then)
      : super(_value, (v) => _then(v as _EmailNotVerified));

  @override
  _EmailNotVerified get _value => super._value as _EmailNotVerified;
}

/// @nodoc

class _$_EmailNotVerified implements _EmailNotVerified {
  const _$_EmailNotVerified();

  @override
  String toString() {
    return 'AuthFailure.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return emailNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailNotVerified implements AuthFailure {
  const factory _EmailNotVerified() = _$_EmailNotVerified;
}

/// @nodoc
abstract class _$EmailAlreadyInUseCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$EmailAlreadyInUseCopyWith<$Res> {
  __$EmailAlreadyInUseCopyWithImpl(
      _EmailAlreadyInUse _value, $Res Function(_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _EmailAlreadyInUse));

  @override
  _EmailAlreadyInUse get _value => super._value as _EmailAlreadyInUse;
}

/// @nodoc

class _$_EmailAlreadyInUse implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements AuthFailure {
  const factory _EmailAlreadyInUse() = _$_EmailAlreadyInUse;
}

/// @nodoc
abstract class _$WrongEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$WrongEmailAndPasswordCombinationCopyWith(
          _WrongEmailAndPasswordCombination value,
          $Res Function(_WrongEmailAndPasswordCombination) then) =
      __$WrongEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$WrongEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$WrongEmailAndPasswordCombinationCopyWith<$Res> {
  __$WrongEmailAndPasswordCombinationCopyWithImpl(
      _WrongEmailAndPasswordCombination _value,
      $Res Function(_WrongEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as _WrongEmailAndPasswordCombination));

  @override
  _WrongEmailAndPasswordCombination get _value =>
      super._value as _WrongEmailAndPasswordCombination;
}

/// @nodoc

class _$_WrongEmailAndPasswordCombination
    implements _WrongEmailAndPasswordCombination {
  const _$_WrongEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.wrongEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WrongEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() noInternet,
    required TResult Function() cancelledByUser,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmail,
    required TResult Function() emailNotVerified,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() wrongEmailAndPasswordCombination,
  }) {
    return wrongEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
  }) {
    return wrongEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? noInternet,
    TResult Function()? cancelledByUser,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmail,
    TResult Function()? emailNotVerified,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (wrongEmailAndPasswordCombination != null) {
      return wrongEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_WrongEmailAndPasswordCombination value)
        wrongEmailAndPasswordCombination,
  }) {
    return wrongEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
  }) {
    return wrongEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_WrongEmailAndPasswordCombination value)?
        wrongEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (wrongEmailAndPasswordCombination != null) {
      return wrongEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _WrongEmailAndPasswordCombination implements AuthFailure {
  const factory _WrongEmailAndPasswordCombination() =
      _$_WrongEmailAndPasswordCombination;
}
