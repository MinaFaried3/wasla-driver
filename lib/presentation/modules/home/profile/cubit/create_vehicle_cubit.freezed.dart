// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_vehicle_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateVehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) createVehicleSuccess,
    required TResult Function(String message) createVehicleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? createVehicleSuccess,
    TResult? Function(String message)? createVehicleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? createVehicleSuccess,
    TResult Function(String message)? createVehicleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_createVehicleSuccess value) createVehicleSuccess,
    required TResult Function(_createVehicleFailure value) createVehicleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult? Function(_createVehicleFailure value)? createVehicleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult Function(_createVehicleFailure value)? createVehicleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVehicleStateCopyWith<$Res> {
  factory $CreateVehicleStateCopyWith(
          CreateVehicleState value, $Res Function(CreateVehicleState) then) =
      _$CreateVehicleStateCopyWithImpl<$Res, CreateVehicleState>;
}

/// @nodoc
class _$CreateVehicleStateCopyWithImpl<$Res, $Val extends CreateVehicleState>
    implements $CreateVehicleStateCopyWith<$Res> {
  _$CreateVehicleStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateVehicleStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateVehicleState.initial()';
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
    required TResult Function(String message) createVehicleSuccess,
    required TResult Function(String message) createVehicleFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? createVehicleSuccess,
    TResult? Function(String message)? createVehicleFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? createVehicleSuccess,
    TResult Function(String message)? createVehicleFailure,
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
    required TResult Function(_createVehicleSuccess value) createVehicleSuccess,
    required TResult Function(_createVehicleFailure value) createVehicleFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult? Function(_createVehicleFailure value)? createVehicleFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult Function(_createVehicleFailure value)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateVehicleState {
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
    extends _$CreateVehicleStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'CreateVehicleState.loading()';
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
    required TResult Function(String message) createVehicleSuccess,
    required TResult Function(String message) createVehicleFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? createVehicleSuccess,
    TResult? Function(String message)? createVehicleFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? createVehicleSuccess,
    TResult Function(String message)? createVehicleFailure,
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
    required TResult Function(_createVehicleSuccess value) createVehicleSuccess,
    required TResult Function(_createVehicleFailure value) createVehicleFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult? Function(_createVehicleFailure value)? createVehicleFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult Function(_createVehicleFailure value)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements CreateVehicleState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$createVehicleSuccessImplCopyWith<$Res> {
  factory _$$createVehicleSuccessImplCopyWith(_$createVehicleSuccessImpl value,
          $Res Function(_$createVehicleSuccessImpl) then) =
      __$$createVehicleSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$createVehicleSuccessImplCopyWithImpl<$Res>
    extends _$CreateVehicleStateCopyWithImpl<$Res, _$createVehicleSuccessImpl>
    implements _$$createVehicleSuccessImplCopyWith<$Res> {
  __$$createVehicleSuccessImplCopyWithImpl(_$createVehicleSuccessImpl _value,
      $Res Function(_$createVehicleSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$createVehicleSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$createVehicleSuccessImpl implements _createVehicleSuccess {
  const _$createVehicleSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CreateVehicleState.createVehicleSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createVehicleSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createVehicleSuccessImplCopyWith<_$createVehicleSuccessImpl>
      get copyWith =>
          __$$createVehicleSuccessImplCopyWithImpl<_$createVehicleSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) createVehicleSuccess,
    required TResult Function(String message) createVehicleFailure,
  }) {
    return createVehicleSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? createVehicleSuccess,
    TResult? Function(String message)? createVehicleFailure,
  }) {
    return createVehicleSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? createVehicleSuccess,
    TResult Function(String message)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (createVehicleSuccess != null) {
      return createVehicleSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_createVehicleSuccess value) createVehicleSuccess,
    required TResult Function(_createVehicleFailure value) createVehicleFailure,
  }) {
    return createVehicleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult? Function(_createVehicleFailure value)? createVehicleFailure,
  }) {
    return createVehicleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult Function(_createVehicleFailure value)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (createVehicleSuccess != null) {
      return createVehicleSuccess(this);
    }
    return orElse();
  }
}

abstract class _createVehicleSuccess implements CreateVehicleState {
  const factory _createVehicleSuccess({required final String message}) =
      _$createVehicleSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$createVehicleSuccessImplCopyWith<_$createVehicleSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$createVehicleFailureImplCopyWith<$Res> {
  factory _$$createVehicleFailureImplCopyWith(_$createVehicleFailureImpl value,
          $Res Function(_$createVehicleFailureImpl) then) =
      __$$createVehicleFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$createVehicleFailureImplCopyWithImpl<$Res>
    extends _$CreateVehicleStateCopyWithImpl<$Res, _$createVehicleFailureImpl>
    implements _$$createVehicleFailureImplCopyWith<$Res> {
  __$$createVehicleFailureImplCopyWithImpl(_$createVehicleFailureImpl _value,
      $Res Function(_$createVehicleFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$createVehicleFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$createVehicleFailureImpl implements _createVehicleFailure {
  const _$createVehicleFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CreateVehicleState.createVehicleFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createVehicleFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createVehicleFailureImplCopyWith<_$createVehicleFailureImpl>
      get copyWith =>
          __$$createVehicleFailureImplCopyWithImpl<_$createVehicleFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) createVehicleSuccess,
    required TResult Function(String message) createVehicleFailure,
  }) {
    return createVehicleFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? createVehicleSuccess,
    TResult? Function(String message)? createVehicleFailure,
  }) {
    return createVehicleFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? createVehicleSuccess,
    TResult Function(String message)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (createVehicleFailure != null) {
      return createVehicleFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_createVehicleSuccess value) createVehicleSuccess,
    required TResult Function(_createVehicleFailure value) createVehicleFailure,
  }) {
    return createVehicleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult? Function(_createVehicleFailure value)? createVehicleFailure,
  }) {
    return createVehicleFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_createVehicleSuccess value)? createVehicleSuccess,
    TResult Function(_createVehicleFailure value)? createVehicleFailure,
    required TResult orElse(),
  }) {
    if (createVehicleFailure != null) {
      return createVehicleFailure(this);
    }
    return orElse();
  }
}

abstract class _createVehicleFailure implements CreateVehicleState {
  const factory _createVehicleFailure({required final String message}) =
      _$createVehicleFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$createVehicleFailureImplCopyWith<_$createVehicleFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
