// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PublicDriverModel publicDriverModel)
        registerPublicDriverSuccess,
    required TResult Function(String message) registerPublicDriverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult? Function(String message)? registerPublicDriverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult Function(String message)? registerPublicDriverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_registerPublicDriverSuccess value)
        registerPublicDriverSuccess,
    required TResult Function(_registerPublicDriverFailure value)
        registerPublicDriverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult? Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

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
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegisterState.initial()';
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
    required TResult Function(PublicDriverModel publicDriverModel)
        registerPublicDriverSuccess,
    required TResult Function(String message) registerPublicDriverFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult? Function(String message)? registerPublicDriverFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult Function(String message)? registerPublicDriverFailure,
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
    required TResult Function(_registerPublicDriverSuccess value)
        registerPublicDriverSuccess,
    required TResult Function(_registerPublicDriverFailure value)
        registerPublicDriverFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult? Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterState {
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
    extends _$RegisterStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'RegisterState.loading()';
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
    required TResult Function(PublicDriverModel publicDriverModel)
        registerPublicDriverSuccess,
    required TResult Function(String message) registerPublicDriverFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult? Function(String message)? registerPublicDriverFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult Function(String message)? registerPublicDriverFailure,
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
    required TResult Function(_registerPublicDriverSuccess value)
        registerPublicDriverSuccess,
    required TResult Function(_registerPublicDriverFailure value)
        registerPublicDriverFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult? Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements RegisterState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$registerPublicDriverSuccessImplCopyWith<$Res> {
  factory _$$registerPublicDriverSuccessImplCopyWith(
          _$registerPublicDriverSuccessImpl value,
          $Res Function(_$registerPublicDriverSuccessImpl) then) =
      __$$registerPublicDriverSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PublicDriverModel publicDriverModel});
}

/// @nodoc
class __$$registerPublicDriverSuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$registerPublicDriverSuccessImpl>
    implements _$$registerPublicDriverSuccessImplCopyWith<$Res> {
  __$$registerPublicDriverSuccessImplCopyWithImpl(
      _$registerPublicDriverSuccessImpl _value,
      $Res Function(_$registerPublicDriverSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicDriverModel = null,
  }) {
    return _then(_$registerPublicDriverSuccessImpl(
      publicDriverModel: null == publicDriverModel
          ? _value.publicDriverModel
          : publicDriverModel // ignore: cast_nullable_to_non_nullable
              as PublicDriverModel,
    ));
  }
}

/// @nodoc

class _$registerPublicDriverSuccessImpl
    implements _registerPublicDriverSuccess {
  const _$registerPublicDriverSuccessImpl({required this.publicDriverModel});

  @override
  final PublicDriverModel publicDriverModel;

  @override
  String toString() {
    return 'RegisterState.registerPublicDriverSuccess(publicDriverModel: $publicDriverModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerPublicDriverSuccessImpl &&
            (identical(other.publicDriverModel, publicDriverModel) ||
                other.publicDriverModel == publicDriverModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicDriverModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$registerPublicDriverSuccessImplCopyWith<_$registerPublicDriverSuccessImpl>
      get copyWith => __$$registerPublicDriverSuccessImplCopyWithImpl<
          _$registerPublicDriverSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PublicDriverModel publicDriverModel)
        registerPublicDriverSuccess,
    required TResult Function(String message) registerPublicDriverFailure,
  }) {
    return registerPublicDriverSuccess(publicDriverModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult? Function(String message)? registerPublicDriverFailure,
  }) {
    return registerPublicDriverSuccess?.call(publicDriverModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult Function(String message)? registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (registerPublicDriverSuccess != null) {
      return registerPublicDriverSuccess(publicDriverModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_registerPublicDriverSuccess value)
        registerPublicDriverSuccess,
    required TResult Function(_registerPublicDriverFailure value)
        registerPublicDriverFailure,
  }) {
    return registerPublicDriverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult? Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
  }) {
    return registerPublicDriverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (registerPublicDriverSuccess != null) {
      return registerPublicDriverSuccess(this);
    }
    return orElse();
  }
}

abstract class _registerPublicDriverSuccess implements RegisterState {
  const factory _registerPublicDriverSuccess(
          {required final PublicDriverModel publicDriverModel}) =
      _$registerPublicDriverSuccessImpl;

  PublicDriverModel get publicDriverModel;
  @JsonKey(ignore: true)
  _$$registerPublicDriverSuccessImplCopyWith<_$registerPublicDriverSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$registerPublicDriverFailureImplCopyWith<$Res> {
  factory _$$registerPublicDriverFailureImplCopyWith(
          _$registerPublicDriverFailureImpl value,
          $Res Function(_$registerPublicDriverFailureImpl) then) =
      __$$registerPublicDriverFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$registerPublicDriverFailureImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$registerPublicDriverFailureImpl>
    implements _$$registerPublicDriverFailureImplCopyWith<$Res> {
  __$$registerPublicDriverFailureImplCopyWithImpl(
      _$registerPublicDriverFailureImpl _value,
      $Res Function(_$registerPublicDriverFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$registerPublicDriverFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$registerPublicDriverFailureImpl
    implements _registerPublicDriverFailure {
  const _$registerPublicDriverFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState.registerPublicDriverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerPublicDriverFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$registerPublicDriverFailureImplCopyWith<_$registerPublicDriverFailureImpl>
      get copyWith => __$$registerPublicDriverFailureImplCopyWithImpl<
          _$registerPublicDriverFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PublicDriverModel publicDriverModel)
        registerPublicDriverSuccess,
    required TResult Function(String message) registerPublicDriverFailure,
  }) {
    return registerPublicDriverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult? Function(String message)? registerPublicDriverFailure,
  }) {
    return registerPublicDriverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PublicDriverModel publicDriverModel)?
        registerPublicDriverSuccess,
    TResult Function(String message)? registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (registerPublicDriverFailure != null) {
      return registerPublicDriverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_registerPublicDriverSuccess value)
        registerPublicDriverSuccess,
    required TResult Function(_registerPublicDriverFailure value)
        registerPublicDriverFailure,
  }) {
    return registerPublicDriverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult? Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
  }) {
    return registerPublicDriverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_registerPublicDriverSuccess value)?
        registerPublicDriverSuccess,
    TResult Function(_registerPublicDriverFailure value)?
        registerPublicDriverFailure,
    required TResult orElse(),
  }) {
    if (registerPublicDriverFailure != null) {
      return registerPublicDriverFailure(this);
    }
    return orElse();
  }
}

abstract class _registerPublicDriverFailure implements RegisterState {
  const factory _registerPublicDriverFailure({required final String message}) =
      _$registerPublicDriverFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$registerPublicDriverFailureImplCopyWith<_$registerPublicDriverFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
