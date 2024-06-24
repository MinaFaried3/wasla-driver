// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_trip_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTripStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) updateTripStatusFailure,
    required TResult Function() updateTripStatusSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? updateTripStatusFailure,
    TResult? Function()? updateTripStatusSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? updateTripStatusFailure,
    TResult Function()? updateTripStatusSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_updateTripStatusFailure value)
        updateTripStatusFailure,
    required TResult Function(_updateTripStatusSuccess value)
        updateTripStatusSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult? Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTripStatusStateCopyWith<$Res> {
  factory $UpdateTripStatusStateCopyWith(UpdateTripStatusState value,
          $Res Function(UpdateTripStatusState) then) =
      _$UpdateTripStatusStateCopyWithImpl<$Res, UpdateTripStatusState>;
}

/// @nodoc
class _$UpdateTripStatusStateCopyWithImpl<$Res,
        $Val extends UpdateTripStatusState>
    implements $UpdateTripStatusStateCopyWith<$Res> {
  _$UpdateTripStatusStateCopyWithImpl(this._value, this._then);

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
    extends _$UpdateTripStatusStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UpdateTripStatusState.initial()';
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
    required TResult Function(String message) updateTripStatusFailure,
    required TResult Function() updateTripStatusSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? updateTripStatusFailure,
    TResult? Function()? updateTripStatusSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? updateTripStatusFailure,
    TResult Function()? updateTripStatusSuccess,
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
    required TResult Function(_updateTripStatusFailure value)
        updateTripStatusFailure,
    required TResult Function(_updateTripStatusSuccess value)
        updateTripStatusSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult? Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateTripStatusState {
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
    extends _$UpdateTripStatusStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'UpdateTripStatusState.loading()';
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
    required TResult Function(String message) updateTripStatusFailure,
    required TResult Function() updateTripStatusSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? updateTripStatusFailure,
    TResult? Function()? updateTripStatusSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? updateTripStatusFailure,
    TResult Function()? updateTripStatusSuccess,
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
    required TResult Function(_updateTripStatusFailure value)
        updateTripStatusFailure,
    required TResult Function(_updateTripStatusSuccess value)
        updateTripStatusSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult? Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements UpdateTripStatusState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$updateTripStatusFailureImplCopyWith<$Res> {
  factory _$$updateTripStatusFailureImplCopyWith(
          _$updateTripStatusFailureImpl value,
          $Res Function(_$updateTripStatusFailureImpl) then) =
      __$$updateTripStatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$updateTripStatusFailureImplCopyWithImpl<$Res>
    extends _$UpdateTripStatusStateCopyWithImpl<$Res,
        _$updateTripStatusFailureImpl>
    implements _$$updateTripStatusFailureImplCopyWith<$Res> {
  __$$updateTripStatusFailureImplCopyWithImpl(
      _$updateTripStatusFailureImpl _value,
      $Res Function(_$updateTripStatusFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$updateTripStatusFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateTripStatusFailureImpl implements _updateTripStatusFailure {
  const _$updateTripStatusFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateTripStatusState.updateTripStatusFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateTripStatusFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateTripStatusFailureImplCopyWith<_$updateTripStatusFailureImpl>
      get copyWith => __$$updateTripStatusFailureImplCopyWithImpl<
          _$updateTripStatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) updateTripStatusFailure,
    required TResult Function() updateTripStatusSuccess,
  }) {
    return updateTripStatusFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? updateTripStatusFailure,
    TResult? Function()? updateTripStatusSuccess,
  }) {
    return updateTripStatusFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? updateTripStatusFailure,
    TResult Function()? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (updateTripStatusFailure != null) {
      return updateTripStatusFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_updateTripStatusFailure value)
        updateTripStatusFailure,
    required TResult Function(_updateTripStatusSuccess value)
        updateTripStatusSuccess,
  }) {
    return updateTripStatusFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult? Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
  }) {
    return updateTripStatusFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (updateTripStatusFailure != null) {
      return updateTripStatusFailure(this);
    }
    return orElse();
  }
}

abstract class _updateTripStatusFailure implements UpdateTripStatusState {
  const factory _updateTripStatusFailure({required final String message}) =
      _$updateTripStatusFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$updateTripStatusFailureImplCopyWith<_$updateTripStatusFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateTripStatusSuccessImplCopyWith<$Res> {
  factory _$$updateTripStatusSuccessImplCopyWith(
          _$updateTripStatusSuccessImpl value,
          $Res Function(_$updateTripStatusSuccessImpl) then) =
      __$$updateTripStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$updateTripStatusSuccessImplCopyWithImpl<$Res>
    extends _$UpdateTripStatusStateCopyWithImpl<$Res,
        _$updateTripStatusSuccessImpl>
    implements _$$updateTripStatusSuccessImplCopyWith<$Res> {
  __$$updateTripStatusSuccessImplCopyWithImpl(
      _$updateTripStatusSuccessImpl _value,
      $Res Function(_$updateTripStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$updateTripStatusSuccessImpl implements _updateTripStatusSuccess {
  const _$updateTripStatusSuccessImpl();

  @override
  String toString() {
    return 'UpdateTripStatusState.updateTripStatusSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateTripStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) updateTripStatusFailure,
    required TResult Function() updateTripStatusSuccess,
  }) {
    return updateTripStatusSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? updateTripStatusFailure,
    TResult? Function()? updateTripStatusSuccess,
  }) {
    return updateTripStatusSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? updateTripStatusFailure,
    TResult Function()? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (updateTripStatusSuccess != null) {
      return updateTripStatusSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_updateTripStatusFailure value)
        updateTripStatusFailure,
    required TResult Function(_updateTripStatusSuccess value)
        updateTripStatusSuccess,
  }) {
    return updateTripStatusSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult? Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
  }) {
    return updateTripStatusSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_updateTripStatusFailure value)? updateTripStatusFailure,
    TResult Function(_updateTripStatusSuccess value)? updateTripStatusSuccess,
    required TResult orElse(),
  }) {
    if (updateTripStatusSuccess != null) {
      return updateTripStatusSuccess(this);
    }
    return orElse();
  }
}

abstract class _updateTripStatusSuccess implements UpdateTripStatusState {
  const factory _updateTripStatusSuccess() = _$updateTripStatusSuccessImpl;
}
