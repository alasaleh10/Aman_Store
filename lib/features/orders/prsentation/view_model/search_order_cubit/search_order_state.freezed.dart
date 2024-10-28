// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOrderStateCopyWith<$Res> {
  factory $SearchOrderStateCopyWith(
          SearchOrderState value, $Res Function(SearchOrderState) then) =
      _$SearchOrderStateCopyWithImpl<$Res, SearchOrderState>;
}

/// @nodoc
class _$SearchOrderStateCopyWithImpl<$Res, $Val extends SearchOrderState>
    implements $SearchOrderStateCopyWith<$Res> {
  _$SearchOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchOrderInitialImplCopyWith<$Res> {
  factory _$$SearchOrderInitialImplCopyWith(_$SearchOrderInitialImpl value,
          $Res Function(_$SearchOrderInitialImpl) then) =
      __$$SearchOrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchOrderInitialImplCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res, _$SearchOrderInitialImpl>
    implements _$$SearchOrderInitialImplCopyWith<$Res> {
  __$$SearchOrderInitialImplCopyWithImpl(_$SearchOrderInitialImpl _value,
      $Res Function(_$SearchOrderInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchOrderInitialImpl implements SearchOrderInitial {
  const _$SearchOrderInitialImpl();

  @override
  String toString() {
    return 'SearchOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchOrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
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
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchOrderInitial implements SearchOrderState {
  const factory SearchOrderInitial() = _$SearchOrderInitialImpl;
}

/// @nodoc
abstract class _$$SearchOrderLoadingImplCopyWith<$Res> {
  factory _$$SearchOrderLoadingImplCopyWith(_$SearchOrderLoadingImpl value,
          $Res Function(_$SearchOrderLoadingImpl) then) =
      __$$SearchOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchOrderLoadingImplCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res, _$SearchOrderLoadingImpl>
    implements _$$SearchOrderLoadingImplCopyWith<$Res> {
  __$$SearchOrderLoadingImplCopyWithImpl(_$SearchOrderLoadingImpl _value,
      $Res Function(_$SearchOrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchOrderLoadingImpl implements SearchOrderLoading {
  const _$SearchOrderLoadingImpl();

  @override
  String toString() {
    return 'SearchOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
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
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchOrderLoading implements SearchOrderState {
  const factory SearchOrderLoading() = _$SearchOrderLoadingImpl;
}

/// @nodoc
abstract class _$$SearchOrderSucsessImplCopyWith<$Res> {
  factory _$$SearchOrderSucsessImplCopyWith(_$SearchOrderSucsessImpl value,
          $Res Function(_$SearchOrderSucsessImpl) then) =
      __$$SearchOrderSucsessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});
}

/// @nodoc
class __$$SearchOrderSucsessImplCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res, _$SearchOrderSucsessImpl>
    implements _$$SearchOrderSucsessImplCopyWith<$Res> {
  __$$SearchOrderSucsessImplCopyWithImpl(_$SearchOrderSucsessImpl _value,
      $Res Function(_$SearchOrderSucsessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SearchOrderSucsessImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$SearchOrderSucsessImpl implements SearchOrderSucsess {
  const _$SearchOrderSucsessImpl(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'SearchOrderState.sucsess(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrderSucsessImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOrderSucsessImplCopyWith<_$SearchOrderSucsessImpl> get copyWith =>
      __$$SearchOrderSucsessImplCopyWithImpl<_$SearchOrderSucsessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) {
    return sucsess(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) {
    return sucsess?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) {
    return sucsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) {
    return sucsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(this);
    }
    return orElse();
  }
}

abstract class SearchOrderSucsess implements SearchOrderState {
  const factory SearchOrderSucsess(final Order order) =
      _$SearchOrderSucsessImpl;

  Order get order;

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchOrderSucsessImplCopyWith<_$SearchOrderSucsessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchOrderErrorImplCopyWith<$Res> {
  factory _$$SearchOrderErrorImplCopyWith(_$SearchOrderErrorImpl value,
          $Res Function(_$SearchOrderErrorImpl) then) =
      __$$SearchOrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchOrderErrorImplCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res, _$SearchOrderErrorImpl>
    implements _$$SearchOrderErrorImplCopyWith<$Res> {
  __$$SearchOrderErrorImplCopyWithImpl(_$SearchOrderErrorImpl _value,
      $Res Function(_$SearchOrderErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchOrderErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchOrderErrorImpl implements SearchOrderError {
  const _$SearchOrderErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchOrderState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrderErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOrderErrorImplCopyWith<_$SearchOrderErrorImpl> get copyWith =>
      __$$SearchOrderErrorImplCopyWithImpl<_$SearchOrderErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchOrderError implements SearchOrderState {
  const factory SearchOrderError(final String error) = _$SearchOrderErrorImpl;

  String get error;

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchOrderErrorImplCopyWith<_$SearchOrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchOrderNointernetImplCopyWith<$Res> {
  factory _$$SearchOrderNointernetImplCopyWith(
          _$SearchOrderNointernetImpl value,
          $Res Function(_$SearchOrderNointernetImpl) then) =
      __$$SearchOrderNointernetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchOrderNointernetImplCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res, _$SearchOrderNointernetImpl>
    implements _$$SearchOrderNointernetImplCopyWith<$Res> {
  __$$SearchOrderNointernetImplCopyWithImpl(_$SearchOrderNointernetImpl _value,
      $Res Function(_$SearchOrderNointernetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchOrderNointernetImpl implements SearchOrderNointernet {
  const _$SearchOrderNointernetImpl();

  @override
  String toString() {
    return 'SearchOrderState.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrderNointernetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) sucsess,
    required TResult Function(String error) error,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? sucsess,
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? sucsess,
    TResult Function(String error)? error,
    TResult Function()? noInternet,
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
    required TResult Function(SearchOrderInitial value) initial,
    required TResult Function(SearchOrderLoading value) loading,
    required TResult Function(SearchOrderSucsess value) sucsess,
    required TResult Function(SearchOrderError value) error,
    required TResult Function(SearchOrderNointernet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOrderInitial value)? initial,
    TResult? Function(SearchOrderLoading value)? loading,
    TResult? Function(SearchOrderSucsess value)? sucsess,
    TResult? Function(SearchOrderError value)? error,
    TResult? Function(SearchOrderNointernet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOrderInitial value)? initial,
    TResult Function(SearchOrderLoading value)? loading,
    TResult Function(SearchOrderSucsess value)? sucsess,
    TResult Function(SearchOrderError value)? error,
    TResult Function(SearchOrderNointernet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class SearchOrderNointernet implements SearchOrderState {
  const factory SearchOrderNointernet() = _$SearchOrderNointernetImpl;
}
