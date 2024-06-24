// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loginFailure,
    required TResult Function(PublicDriverModel publicDriver)
        loginPublicDriverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loginFailure,
    TResult? Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loginFailure,
    TResult Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loginFailure value) loginFailure,
    required TResult Function(_loginPublicDriverSuccess value)
        loginPublicDriverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loginFailure value)? loginFailure,
    TResult? Function(_loginPublicDriverSuccess value)?
        loginPublicDriverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loginFailure value)? loginFailure,
    TResult Function(_loginPublicDriverSuccess value)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loginFailure,
    required TResult Function(PublicDriverModel publicDriver)
        loginPublicDriverSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loginFailure,
    TResult? Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loginFailure,
    TResult Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_loginFailure value) loginFailure,
    required TResult Function(_loginPublicDriverSuccess value)
        loginPublicDriverSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loginFailure value)? loginFailure,
    TResult? Function(_loginPublicDriverSuccess value)?
        loginPublicDriverSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loginFailure value)? loginFailure,
    TResult Function(_loginPublicDriverSuccess value)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loginFailure,
    required TResult Function(PublicDriverModel publicDriver)
        loginPublicDriverSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loginFailure,
    TResult? Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loginFailure,
    TResult Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loginFailure value) loginFailure,
    required TResult Function(_loginPublicDriverSuccess value)
        loginPublicDriverSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loginFailure value)? loginFailure,
    TResult? Function(_loginPublicDriverSuccess value)?
        loginPublicDriverSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loginFailure value)? loginFailure,
    TResult Function(_loginPublicDriverSuccess value)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements LoginState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$loginFailureImplCopyWith<$Res> {
  factory _$$loginFailureImplCopyWith(
          _$loginFailureImpl value, $Res Function(_$loginFailureImpl) then) =
      __$$loginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$loginFailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginFailureImpl>
    implements _$$loginFailureImplCopyWith<$Res> {
  __$$loginFailureImplCopyWithImpl(
      _$loginFailureImpl _value, $Res Function(_$loginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$loginFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginFailureImpl implements _loginFailure {
  const _$loginFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loginFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginFailureImplCopyWith<_$loginFailureImpl> get copyWith =>
      __$$loginFailureImplCopyWithImpl<_$loginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loginFailure,
    required TResult Function(PublicDriverModel publicDriver)
        loginPublicDriverSuccess,
  }) {
    return loginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loginFailure,
    TResult? Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
  }) {
    return loginFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loginFailure,
    TResult Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loginFailure value) loginFailure,
    required TResult Function(_loginPublicDriverSuccess value)
        loginPublicDriverSuccess,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loginFailure value)? loginFailure,
    TResult? Function(_loginPublicDriverSuccess value)?
        loginPublicDriverSuccess,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loginFailure value)? loginFailure,
    TResult Function(_loginPublicDriverSuccess value)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _loginFailure implements LoginState {
  const factory _loginFailure({required final String message}) =
      _$loginFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$loginFailureImplCopyWith<_$loginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginPublicDriverSuccessImplCopyWith<$Res> {
  factory _$$loginPublicDriverSuccessImplCopyWith(
          _$loginPublicDriverSuccessImpl value,
          $Res Function(_$loginPublicDriverSuccessImpl) then) =
      __$$loginPublicDriverSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PublicDriverModel publicDriver});
}

/// @nodoc
class __$$loginPublicDriverSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginPublicDriverSuccessImpl>
    implements _$$loginPublicDriverSuccessImplCopyWith<$Res> {
  __$$loginPublicDriverSuccessImplCopyWithImpl(
      _$loginPublicDriverSuccessImpl _value,
      $Res Function(_$loginPublicDriverSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicDriver = null,
  }) {
    return _then(_$loginPublicDriverSuccessImpl(
      publicDriver: null == publicDriver
          ? _value.publicDriver
          : publicDriver // ignore: cast_nullable_to_non_nullable
              as PublicDriverModel,
    ));
  }
}

/// @nodoc

class _$loginPublicDriverSuccessImpl implements _loginPublicDriverSuccess {
  const _$loginPublicDriverSuccessImpl({required this.publicDriver});

  @override
  final PublicDriverModel publicDriver;

  @override
  String toString() {
    return 'LoginState.loginPublicDriverSuccess(publicDriver: $publicDriver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginPublicDriverSuccessImpl &&
            (identical(other.publicDriver, publicDriver) ||
                other.publicDriver == publicDriver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicDriver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginPublicDriverSuccessImplCopyWith<_$loginPublicDriverSuccessImpl>
      get copyWith => __$$loginPublicDriverSuccessImplCopyWithImpl<
          _$loginPublicDriverSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loginFailure,
    required TResult Function(PublicDriverModel publicDriver)
        loginPublicDriverSuccess,
  }) {
    return loginPublicDriverSuccess(publicDriver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loginFailure,
    TResult? Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
  }) {
    return loginPublicDriverSuccess?.call(publicDriver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loginFailure,
    TResult Function(PublicDriverModel publicDriver)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loginPublicDriverSuccess != null) {
      return loginPublicDriverSuccess(publicDriver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loginFailure value) loginFailure,
    required TResult Function(_loginPublicDriverSuccess value)
        loginPublicDriverSuccess,
  }) {
    return loginPublicDriverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loginFailure value)? loginFailure,
    TResult? Function(_loginPublicDriverSuccess value)?
        loginPublicDriverSuccess,
  }) {
    return loginPublicDriverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loginFailure value)? loginFailure,
    TResult Function(_loginPublicDriverSuccess value)? loginPublicDriverSuccess,
    required TResult orElse(),
  }) {
    if (loginPublicDriverSuccess != null) {
      return loginPublicDriverSuccess(this);
    }
    return orElse();
  }
}

abstract class _loginPublicDriverSuccess implements LoginState {
  const factory _loginPublicDriverSuccess(
          {required final PublicDriverModel publicDriver}) =
      _$loginPublicDriverSuccessImpl;

  PublicDriverModel get publicDriver;
  @JsonKey(ignore: true)
  _$$loginPublicDriverSuccessImplCopyWith<_$loginPublicDriverSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
