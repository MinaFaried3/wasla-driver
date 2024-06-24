// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Station> stations) getStationsSuccess,
    required TResult Function(String message) getStationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Station> stations)? getStationsSuccess,
    TResult? Function(String message)? getStationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Station> stations)? getStationsSuccess,
    TResult Function(String message)? getStationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getStationsSuccess value) getStationsSuccess,
    required TResult Function(_getStationError value) getStationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getStationsSuccess value)? getStationsSuccess,
    TResult? Function(_getStationError value)? getStationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getStationsSuccess value)? getStationsSuccess,
    TResult Function(_getStationError value)? getStationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainHomeStateCopyWith<$Res> {
  factory $MainHomeStateCopyWith(
          MainHomeState value, $Res Function(MainHomeState) then) =
      _$MainHomeStateCopyWithImpl<$Res, MainHomeState>;
}

/// @nodoc
class _$MainHomeStateCopyWithImpl<$Res, $Val extends MainHomeState>
    implements $MainHomeStateCopyWith<$Res> {
  _$MainHomeStateCopyWithImpl(this._value, this._then);

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
    extends _$MainHomeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainHomeState.initial()';
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
    required TResult Function(List<Station> stations) getStationsSuccess,
    required TResult Function(String message) getStationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Station> stations)? getStationsSuccess,
    TResult? Function(String message)? getStationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Station> stations)? getStationsSuccess,
    TResult Function(String message)? getStationError,
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
    required TResult Function(_getStationsSuccess value) getStationsSuccess,
    required TResult Function(_getStationError value) getStationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getStationsSuccess value)? getStationsSuccess,
    TResult? Function(_getStationError value)? getStationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getStationsSuccess value)? getStationsSuccess,
    TResult Function(_getStationError value)? getStationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainHomeState {
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
    extends _$MainHomeStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'MainHomeState.loading()';
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
    required TResult Function(List<Station> stations) getStationsSuccess,
    required TResult Function(String message) getStationError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Station> stations)? getStationsSuccess,
    TResult? Function(String message)? getStationError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Station> stations)? getStationsSuccess,
    TResult Function(String message)? getStationError,
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
    required TResult Function(_getStationsSuccess value) getStationsSuccess,
    required TResult Function(_getStationError value) getStationError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getStationsSuccess value)? getStationsSuccess,
    TResult? Function(_getStationError value)? getStationError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getStationsSuccess value)? getStationsSuccess,
    TResult Function(_getStationError value)? getStationError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements MainHomeState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$getStationsSuccessImplCopyWith<$Res> {
  factory _$$getStationsSuccessImplCopyWith(_$getStationsSuccessImpl value,
          $Res Function(_$getStationsSuccessImpl) then) =
      __$$getStationsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Station> stations});
}

/// @nodoc
class __$$getStationsSuccessImplCopyWithImpl<$Res>
    extends _$MainHomeStateCopyWithImpl<$Res, _$getStationsSuccessImpl>
    implements _$$getStationsSuccessImplCopyWith<$Res> {
  __$$getStationsSuccessImplCopyWithImpl(_$getStationsSuccessImpl _value,
      $Res Function(_$getStationsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_$getStationsSuccessImpl(
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station>,
    ));
  }
}

/// @nodoc

class _$getStationsSuccessImpl implements _getStationsSuccess {
  const _$getStationsSuccessImpl({required final List<Station> stations})
      : _stations = stations;

  final List<Station> _stations;
  @override
  List<Station> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'MainHomeState.getStationsSuccess(stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getStationsSuccessImpl &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getStationsSuccessImplCopyWith<_$getStationsSuccessImpl> get copyWith =>
      __$$getStationsSuccessImplCopyWithImpl<_$getStationsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Station> stations) getStationsSuccess,
    required TResult Function(String message) getStationError,
  }) {
    return getStationsSuccess(stations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Station> stations)? getStationsSuccess,
    TResult? Function(String message)? getStationError,
  }) {
    return getStationsSuccess?.call(stations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Station> stations)? getStationsSuccess,
    TResult Function(String message)? getStationError,
    required TResult orElse(),
  }) {
    if (getStationsSuccess != null) {
      return getStationsSuccess(stations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getStationsSuccess value) getStationsSuccess,
    required TResult Function(_getStationError value) getStationError,
  }) {
    return getStationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getStationsSuccess value)? getStationsSuccess,
    TResult? Function(_getStationError value)? getStationError,
  }) {
    return getStationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getStationsSuccess value)? getStationsSuccess,
    TResult Function(_getStationError value)? getStationError,
    required TResult orElse(),
  }) {
    if (getStationsSuccess != null) {
      return getStationsSuccess(this);
    }
    return orElse();
  }
}

abstract class _getStationsSuccess implements MainHomeState {
  const factory _getStationsSuccess({required final List<Station> stations}) =
      _$getStationsSuccessImpl;

  List<Station> get stations;
  @JsonKey(ignore: true)
  _$$getStationsSuccessImplCopyWith<_$getStationsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getStationErrorImplCopyWith<$Res> {
  factory _$$getStationErrorImplCopyWith(_$getStationErrorImpl value,
          $Res Function(_$getStationErrorImpl) then) =
      __$$getStationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$getStationErrorImplCopyWithImpl<$Res>
    extends _$MainHomeStateCopyWithImpl<$Res, _$getStationErrorImpl>
    implements _$$getStationErrorImplCopyWith<$Res> {
  __$$getStationErrorImplCopyWithImpl(
      _$getStationErrorImpl _value, $Res Function(_$getStationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$getStationErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getStationErrorImpl implements _getStationError {
  const _$getStationErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MainHomeState.getStationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getStationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getStationErrorImplCopyWith<_$getStationErrorImpl> get copyWith =>
      __$$getStationErrorImplCopyWithImpl<_$getStationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Station> stations) getStationsSuccess,
    required TResult Function(String message) getStationError,
  }) {
    return getStationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Station> stations)? getStationsSuccess,
    TResult? Function(String message)? getStationError,
  }) {
    return getStationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Station> stations)? getStationsSuccess,
    TResult Function(String message)? getStationError,
    required TResult orElse(),
  }) {
    if (getStationError != null) {
      return getStationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_getStationsSuccess value) getStationsSuccess,
    required TResult Function(_getStationError value) getStationError,
  }) {
    return getStationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_getStationsSuccess value)? getStationsSuccess,
    TResult? Function(_getStationError value)? getStationError,
  }) {
    return getStationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_getStationsSuccess value)? getStationsSuccess,
    TResult Function(_getStationError value)? getStationError,
    required TResult orElse(),
  }) {
    if (getStationError != null) {
      return getStationError(this);
    }
    return orElse();
  }
}

abstract class _getStationError implements MainHomeState {
  const factory _getStationError({required final String message}) =
      _$getStationErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$getStationErrorImplCopyWith<_$getStationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
