// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_trip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentTripState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrentTripModel? currentTrip)
        getCurrentTripSuccess,
    required TResult Function(String message) getCurrentTripError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult? Function(String message)? getCurrentTripError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult Function(String message)? getCurrentTripError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getCurrentTripSuccess value)
        getCurrentTripSuccess,
    required TResult Function(_getCurrentError value) getCurrentTripError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult? Function(_getCurrentError value)? getCurrentTripError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult Function(_getCurrentError value)? getCurrentTripError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTripStateCopyWith<$Res> {
  factory $CurrentTripStateCopyWith(
          CurrentTripState value, $Res Function(CurrentTripState) then) =
      _$CurrentTripStateCopyWithImpl<$Res, CurrentTripState>;
}

/// @nodoc
class _$CurrentTripStateCopyWithImpl<$Res, $Val extends CurrentTripState>
    implements $CurrentTripStateCopyWith<$Res> {
  _$CurrentTripStateCopyWithImpl(this._value, this._then);

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
    extends _$CurrentTripStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CurrentTripState.initial()';
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
    required TResult Function(CurrentTripModel? currentTrip)
        getCurrentTripSuccess,
    required TResult Function(String message) getCurrentTripError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult? Function(String message)? getCurrentTripError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult Function(String message)? getCurrentTripError,
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
    required TResult Function(_getCurrentTripSuccess value)
        getCurrentTripSuccess,
    required TResult Function(_getCurrentError value) getCurrentTripError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult? Function(_getCurrentError value)? getCurrentTripError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult Function(_getCurrentError value)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CurrentTripState {
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
    extends _$CurrentTripStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'CurrentTripState.loading()';
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
    required TResult Function(CurrentTripModel? currentTrip)
        getCurrentTripSuccess,
    required TResult Function(String message) getCurrentTripError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult? Function(String message)? getCurrentTripError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult Function(String message)? getCurrentTripError,
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
    required TResult Function(_getCurrentTripSuccess value)
        getCurrentTripSuccess,
    required TResult Function(_getCurrentError value) getCurrentTripError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult? Function(_getCurrentError value)? getCurrentTripError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult Function(_getCurrentError value)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements CurrentTripState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$getCurrentTripSuccessImplCopyWith<$Res> {
  factory _$$getCurrentTripSuccessImplCopyWith(
          _$getCurrentTripSuccessImpl value,
          $Res Function(_$getCurrentTripSuccessImpl) then) =
      __$$getCurrentTripSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentTripModel? currentTrip});
}

/// @nodoc
class __$$getCurrentTripSuccessImplCopyWithImpl<$Res>
    extends _$CurrentTripStateCopyWithImpl<$Res, _$getCurrentTripSuccessImpl>
    implements _$$getCurrentTripSuccessImplCopyWith<$Res> {
  __$$getCurrentTripSuccessImplCopyWithImpl(_$getCurrentTripSuccessImpl _value,
      $Res Function(_$getCurrentTripSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTrip = freezed,
  }) {
    return _then(_$getCurrentTripSuccessImpl(
      currentTrip: freezed == currentTrip
          ? _value.currentTrip
          : currentTrip // ignore: cast_nullable_to_non_nullable
              as CurrentTripModel?,
    ));
  }
}

/// @nodoc

class _$getCurrentTripSuccessImpl implements _getCurrentTripSuccess {
  const _$getCurrentTripSuccessImpl({required this.currentTrip});

  @override
  final CurrentTripModel? currentTrip;

  @override
  String toString() {
    return 'CurrentTripState.getCurrentTripSuccess(currentTrip: $currentTrip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCurrentTripSuccessImpl &&
            (identical(other.currentTrip, currentTrip) ||
                other.currentTrip == currentTrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTrip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCurrentTripSuccessImplCopyWith<_$getCurrentTripSuccessImpl>
      get copyWith => __$$getCurrentTripSuccessImplCopyWithImpl<
          _$getCurrentTripSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrentTripModel? currentTrip)
        getCurrentTripSuccess,
    required TResult Function(String message) getCurrentTripError,
  }) {
    return getCurrentTripSuccess(currentTrip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult? Function(String message)? getCurrentTripError,
  }) {
    return getCurrentTripSuccess?.call(currentTrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult Function(String message)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (getCurrentTripSuccess != null) {
      return getCurrentTripSuccess(currentTrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getCurrentTripSuccess value)
        getCurrentTripSuccess,
    required TResult Function(_getCurrentError value) getCurrentTripError,
  }) {
    return getCurrentTripSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult? Function(_getCurrentError value)? getCurrentTripError,
  }) {
    return getCurrentTripSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult Function(_getCurrentError value)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (getCurrentTripSuccess != null) {
      return getCurrentTripSuccess(this);
    }
    return orElse();
  }
}

abstract class _getCurrentTripSuccess implements CurrentTripState {
  const factory _getCurrentTripSuccess(
          {required final CurrentTripModel? currentTrip}) =
      _$getCurrentTripSuccessImpl;

  CurrentTripModel? get currentTrip;
  @JsonKey(ignore: true)
  _$$getCurrentTripSuccessImplCopyWith<_$getCurrentTripSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCurrentErrorImplCopyWith<$Res> {
  factory _$$getCurrentErrorImplCopyWith(_$getCurrentErrorImpl value,
          $Res Function(_$getCurrentErrorImpl) then) =
      __$$getCurrentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$getCurrentErrorImplCopyWithImpl<$Res>
    extends _$CurrentTripStateCopyWithImpl<$Res, _$getCurrentErrorImpl>
    implements _$$getCurrentErrorImplCopyWith<$Res> {
  __$$getCurrentErrorImplCopyWithImpl(
      _$getCurrentErrorImpl _value, $Res Function(_$getCurrentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$getCurrentErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getCurrentErrorImpl implements _getCurrentError {
  const _$getCurrentErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CurrentTripState.getCurrentTripError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCurrentErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCurrentErrorImplCopyWith<_$getCurrentErrorImpl> get copyWith =>
      __$$getCurrentErrorImplCopyWithImpl<_$getCurrentErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrentTripModel? currentTrip)
        getCurrentTripSuccess,
    required TResult Function(String message) getCurrentTripError,
  }) {
    return getCurrentTripError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult? Function(String message)? getCurrentTripError,
  }) {
    return getCurrentTripError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrentTripModel? currentTrip)? getCurrentTripSuccess,
    TResult Function(String message)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (getCurrentTripError != null) {
      return getCurrentTripError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getCurrentTripSuccess value)
        getCurrentTripSuccess,
    required TResult Function(_getCurrentError value) getCurrentTripError,
  }) {
    return getCurrentTripError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult? Function(_getCurrentError value)? getCurrentTripError,
  }) {
    return getCurrentTripError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getCurrentTripSuccess value)? getCurrentTripSuccess,
    TResult Function(_getCurrentError value)? getCurrentTripError,
    required TResult orElse(),
  }) {
    if (getCurrentTripError != null) {
      return getCurrentTripError(this);
    }
    return orElse();
  }
}

abstract class _getCurrentError implements CurrentTripState {
  const factory _getCurrentError({required final String message}) =
      _$getCurrentErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$getCurrentErrorImplCopyWith<_$getCurrentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
