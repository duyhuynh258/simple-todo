// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  SignInInProgress inProgress(AuthProvider authProvider) {
    return SignInInProgress(
      authProvider,
    );
  }

  _Success success(
      {required User user,
      required AuthProvider authProvider,
      required bool isNewUser}) {
    return _Success(
      user: user,
      authProvider: authProvider,
      isNewUser: isNewUser,
    );
  }

  _ResetPasswordEmailSent resetPasswordEmailSent() {
    return const _ResetPasswordEmailSent();
  }

  SignInFailed failure(
      {required String errorMessage, required AuthProvider authProvider}) {
    return SignInFailed(
      errorMessage: errorMessage,
      authProvider: authProvider,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $SignInInProgressCopyWith<$Res> {
  factory $SignInInProgressCopyWith(
          SignInInProgress value, $Res Function(SignInInProgress) then) =
      _$SignInInProgressCopyWithImpl<$Res>;
  $Res call({AuthProvider authProvider});
}

/// @nodoc
class _$SignInInProgressCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInInProgressCopyWith<$Res> {
  _$SignInInProgressCopyWithImpl(
      SignInInProgress _value, $Res Function(SignInInProgress) _then)
      : super(_value, (v) => _then(v as SignInInProgress));

  @override
  SignInInProgress get _value => super._value as SignInInProgress;

  @override
  $Res call({
    Object? authProvider = freezed,
  }) {
    return _then(SignInInProgress(
      authProvider == freezed
          ? _value.authProvider
          : authProvider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
    ));
  }
}

/// @nodoc

class _$SignInInProgress implements SignInInProgress {
  const _$SignInInProgress(this.authProvider);

  @override
  final AuthProvider authProvider;

  @override
  String toString() {
    return 'SignInState.inProgress(authProvider: $authProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInInProgress &&
            (identical(other.authProvider, authProvider) ||
                other.authProvider == authProvider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authProvider);

  @JsonKey(ignore: true)
  @override
  $SignInInProgressCopyWith<SignInInProgress> get copyWith =>
      _$SignInInProgressCopyWithImpl<SignInInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) {
    return inProgress(authProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) {
    return inProgress?.call(authProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(authProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SignInInProgress implements SignInState {
  const factory SignInInProgress(AuthProvider authProvider) =
      _$SignInInProgress;

  AuthProvider get authProvider;
  @JsonKey(ignore: true)
  $SignInInProgressCopyWith<SignInInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User user, AuthProvider authProvider, bool isNewUser});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? user = freezed,
    Object? authProvider = freezed,
    Object? isNewUser = freezed,
  }) {
    return _then(_Success(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      authProvider: authProvider == freezed
          ? _value.authProvider
          : authProvider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.user,
      required this.authProvider,
      required this.isNewUser});

  @override
  final User user;
  @override
  final AuthProvider authProvider;
  @override
  final bool isNewUser;

  @override
  String toString() {
    return 'SignInState.success(user: $user, authProvider: $authProvider, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authProvider, authProvider) ||
                other.authProvider == authProvider) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, authProvider, isNewUser);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) {
    return success(user, authProvider, isNewUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) {
    return success?.call(user, authProvider, isNewUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, authProvider, isNewUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignInState {
  const factory _Success(
      {required User user,
      required AuthProvider authProvider,
      required bool isNewUser}) = _$_Success;

  User get user;
  AuthProvider get authProvider;
  bool get isNewUser;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetPasswordEmailSentCopyWith<$Res> {
  factory _$ResetPasswordEmailSentCopyWith(_ResetPasswordEmailSent value,
          $Res Function(_ResetPasswordEmailSent) then) =
      __$ResetPasswordEmailSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordEmailSentCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$ResetPasswordEmailSentCopyWith<$Res> {
  __$ResetPasswordEmailSentCopyWithImpl(_ResetPasswordEmailSent _value,
      $Res Function(_ResetPasswordEmailSent) _then)
      : super(_value, (v) => _then(v as _ResetPasswordEmailSent));

  @override
  _ResetPasswordEmailSent get _value => super._value as _ResetPasswordEmailSent;
}

/// @nodoc

class _$_ResetPasswordEmailSent implements _ResetPasswordEmailSent {
  const _$_ResetPasswordEmailSent();

  @override
  String toString() {
    return 'SignInState.resetPasswordEmailSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetPasswordEmailSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) {
    return resetPasswordEmailSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) {
    return resetPasswordEmailSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) {
    if (resetPasswordEmailSent != null) {
      return resetPasswordEmailSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) {
    return resetPasswordEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) {
    return resetPasswordEmailSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) {
    if (resetPasswordEmailSent != null) {
      return resetPasswordEmailSent(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordEmailSent implements SignInState {
  const factory _ResetPasswordEmailSent() = _$_ResetPasswordEmailSent;
}

/// @nodoc
abstract class $SignInFailedCopyWith<$Res> {
  factory $SignInFailedCopyWith(
          SignInFailed value, $Res Function(SignInFailed) then) =
      _$SignInFailedCopyWithImpl<$Res>;
  $Res call({String errorMessage, AuthProvider authProvider});
}

/// @nodoc
class _$SignInFailedCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInFailedCopyWith<$Res> {
  _$SignInFailedCopyWithImpl(
      SignInFailed _value, $Res Function(SignInFailed) _then)
      : super(_value, (v) => _then(v as SignInFailed));

  @override
  SignInFailed get _value => super._value as SignInFailed;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? authProvider = freezed,
  }) {
    return _then(SignInFailed(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authProvider: authProvider == freezed
          ? _value.authProvider
          : authProvider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
    ));
  }
}

/// @nodoc

class _$SignInFailed implements SignInFailed {
  const _$SignInFailed(
      {required this.errorMessage, required this.authProvider});

  @override
  final String errorMessage;
  @override
  final AuthProvider authProvider;

  @override
  String toString() {
    return 'SignInState.failure(errorMessage: $errorMessage, authProvider: $authProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInFailed &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.authProvider, authProvider) ||
                other.authProvider == authProvider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, authProvider);

  @JsonKey(ignore: true)
  @override
  $SignInFailedCopyWith<SignInFailed> get copyWith =>
      _$SignInFailedCopyWithImpl<SignInFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthProvider authProvider) inProgress,
    required TResult Function(
            User user, AuthProvider authProvider, bool isNewUser)
        success,
    required TResult Function() resetPasswordEmailSent,
    required TResult Function(String errorMessage, AuthProvider authProvider)
        failure,
  }) {
    return failure(errorMessage, authProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
  }) {
    return failure?.call(errorMessage, authProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthProvider authProvider)? inProgress,
    TResult Function(User user, AuthProvider authProvider, bool isNewUser)?
        success,
    TResult Function()? resetPasswordEmailSent,
    TResult Function(String errorMessage, AuthProvider authProvider)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage, authProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignInInProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_ResetPasswordEmailSent value)
        resetPasswordEmailSent,
    required TResult Function(SignInFailed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignInInProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_ResetPasswordEmailSent value)? resetPasswordEmailSent,
    TResult Function(SignInFailed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignInFailed implements SignInState {
  const factory SignInFailed(
      {required String errorMessage,
      required AuthProvider authProvider}) = _$SignInFailed;

  String get errorMessage;
  AuthProvider get authProvider;
  @JsonKey(ignore: true)
  $SignInFailedCopyWith<SignInFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
