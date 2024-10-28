// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmStatusCopyWith<$Res> {
  factory $ConfirmStatusCopyWith(
          ConfirmStatus value, $Res Function(ConfirmStatus) then) =
      _$ConfirmStatusCopyWithImpl<$Res, ConfirmStatus>;
}

/// @nodoc
class _$ConfirmStatusCopyWithImpl<$Res, $Val extends ConfirmStatus>
    implements $ConfirmStatusCopyWith<$Res> {
  _$ConfirmStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConfirmEmailInitialImplCopyWith<$Res> {
  factory _$$ConfirmEmailInitialImplCopyWith(_$ConfirmEmailInitialImpl value,
          $Res Function(_$ConfirmEmailInitialImpl) then) =
      __$$ConfirmEmailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmEmailInitialImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailInitialImpl>
    implements _$$ConfirmEmailInitialImplCopyWith<$Res> {
  __$$ConfirmEmailInitialImplCopyWithImpl(_$ConfirmEmailInitialImpl _value,
      $Res Function(_$ConfirmEmailInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmEmailInitialImpl implements ConfirmEmailInitial {
  const _$ConfirmEmailInitialImpl();

  @override
  String toString() {
    return 'ConfirmStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
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
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailInitial implements ConfirmStatus {
  const factory ConfirmEmailInitial() = _$ConfirmEmailInitialImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailLoadingImplCopyWith<$Res> {
  factory _$$ConfirmEmailLoadingImplCopyWith(_$ConfirmEmailLoadingImpl value,
          $Res Function(_$ConfirmEmailLoadingImpl) then) =
      __$$ConfirmEmailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmEmailLoadingImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailLoadingImpl>
    implements _$$ConfirmEmailLoadingImplCopyWith<$Res> {
  __$$ConfirmEmailLoadingImplCopyWithImpl(_$ConfirmEmailLoadingImpl _value,
      $Res Function(_$ConfirmEmailLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmEmailLoadingImpl implements ConfirmEmailLoading {
  const _$ConfirmEmailLoadingImpl();

  @override
  String toString() {
    return 'ConfirmStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
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
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailLoading implements ConfirmStatus {
  const factory ConfirmEmailLoading() = _$ConfirmEmailLoadingImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailFailureImplCopyWith<$Res> {
  factory _$$ConfirmEmailFailureImplCopyWith(_$ConfirmEmailFailureImpl value,
          $Res Function(_$ConfirmEmailFailureImpl) then) =
      __$$ConfirmEmailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ConfirmEmailFailureImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailFailureImpl>
    implements _$$ConfirmEmailFailureImplCopyWith<$Res> {
  __$$ConfirmEmailFailureImplCopyWithImpl(_$ConfirmEmailFailureImpl _value,
      $Res Function(_$ConfirmEmailFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ConfirmEmailFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailFailureImpl implements ConfirmEmailFailure {
  const _$ConfirmEmailFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ConfirmStatus.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailFailureImplCopyWith<_$ConfirmEmailFailureImpl> get copyWith =>
      __$$ConfirmEmailFailureImplCopyWithImpl<_$ConfirmEmailFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailFailure implements ConfirmStatus {
  const factory ConfirmEmailFailure(final String errorMessage) =
      _$ConfirmEmailFailureImpl;

  String get errorMessage;

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailFailureImplCopyWith<_$ConfirmEmailFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEmailSucsessImplCopyWith<$Res> {
  factory _$$ConfirmEmailSucsessImplCopyWith(_$ConfirmEmailSucsessImpl value,
          $Res Function(_$ConfirmEmailSucsessImpl) then) =
      __$$ConfirmEmailSucsessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$ConfirmEmailSucsessImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailSucsessImpl>
    implements _$$ConfirmEmailSucsessImplCopyWith<$Res> {
  __$$ConfirmEmailSucsessImplCopyWithImpl(_$ConfirmEmailSucsessImpl _value,
      $Res Function(_$ConfirmEmailSucsessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ConfirmEmailSucsessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailSucsessImpl implements ConfirmEmailSucsess {
  const _$ConfirmEmailSucsessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ConfirmStatus.sucsess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailSucsessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailSucsessImplCopyWith<_$ConfirmEmailSucsessImpl> get copyWith =>
      __$$ConfirmEmailSucsessImplCopyWithImpl<_$ConfirmEmailSucsessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return sucsess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return sucsess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return sucsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return sucsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailSucsess implements ConfirmStatus {
  const factory ConfirmEmailSucsess(final UserModel user) =
      _$ConfirmEmailSucsessImpl;

  UserModel get user;

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailSucsessImplCopyWith<_$ConfirmEmailSucsessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEmailNoInternetImplCopyWith<$Res> {
  factory _$$ConfirmEmailNoInternetImplCopyWith(
          _$ConfirmEmailNoInternetImpl value,
          $Res Function(_$ConfirmEmailNoInternetImpl) then) =
      __$$ConfirmEmailNoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmEmailNoInternetImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailNoInternetImpl>
    implements _$$ConfirmEmailNoInternetImplCopyWith<$Res> {
  __$$ConfirmEmailNoInternetImplCopyWithImpl(
      _$ConfirmEmailNoInternetImpl _value,
      $Res Function(_$ConfirmEmailNoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmEmailNoInternetImpl implements ConfirmEmailNoInternet {
  const _$ConfirmEmailNoInternetImpl();

  @override
  String toString() {
    return 'ConfirmStatus.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailNoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
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
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailNoInternet implements ConfirmStatus {
  const factory ConfirmEmailNoInternet() = _$ConfirmEmailNoInternetImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailSucsess2ImplCopyWith<$Res> {
  factory _$$ConfirmEmailSucsess2ImplCopyWith(_$ConfirmEmailSucsess2Impl value,
          $Res Function(_$ConfirmEmailSucsess2Impl) then) =
      __$$ConfirmEmailSucsess2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConfirmEmailSucsess2ImplCopyWithImpl<$Res>
    extends _$ConfirmStatusCopyWithImpl<$Res, _$ConfirmEmailSucsess2Impl>
    implements _$$ConfirmEmailSucsess2ImplCopyWith<$Res> {
  __$$ConfirmEmailSucsess2ImplCopyWithImpl(_$ConfirmEmailSucsess2Impl _value,
      $Res Function(_$ConfirmEmailSucsess2Impl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConfirmEmailSucsess2Impl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailSucsess2Impl implements ConfirmEmailSucsess2 {
  const _$ConfirmEmailSucsess2Impl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ConfirmStatus.sucsess2(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailSucsess2Impl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailSucsess2ImplCopyWith<_$ConfirmEmailSucsess2Impl>
      get copyWith =>
          __$$ConfirmEmailSucsess2ImplCopyWithImpl<_$ConfirmEmailSucsess2Impl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
    required TResult Function(String message) sucsess2,
  }) {
    return sucsess2(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
    TResult? Function(String message)? sucsess2,
  }) {
    return sucsess2?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    TResult Function(String message)? sucsess2,
    required TResult orElse(),
  }) {
    if (sucsess2 != null) {
      return sucsess2(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailInitial value) initial,
    required TResult Function(ConfirmEmailLoading value) loading,
    required TResult Function(ConfirmEmailFailure value) failure,
    required TResult Function(ConfirmEmailSucsess value) sucsess,
    required TResult Function(ConfirmEmailNoInternet value) noInternet,
    required TResult Function(ConfirmEmailSucsess2 value) sucsess2,
  }) {
    return sucsess2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailInitial value)? initial,
    TResult? Function(ConfirmEmailLoading value)? loading,
    TResult? Function(ConfirmEmailFailure value)? failure,
    TResult? Function(ConfirmEmailSucsess value)? sucsess,
    TResult? Function(ConfirmEmailNoInternet value)? noInternet,
    TResult? Function(ConfirmEmailSucsess2 value)? sucsess2,
  }) {
    return sucsess2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailInitial value)? initial,
    TResult Function(ConfirmEmailLoading value)? loading,
    TResult Function(ConfirmEmailFailure value)? failure,
    TResult Function(ConfirmEmailSucsess value)? sucsess,
    TResult Function(ConfirmEmailNoInternet value)? noInternet,
    TResult Function(ConfirmEmailSucsess2 value)? sucsess2,
    required TResult orElse(),
  }) {
    if (sucsess2 != null) {
      return sucsess2(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailSucsess2 implements ConfirmStatus {
  const factory ConfirmEmailSucsess2(final String message) =
      _$ConfirmEmailSucsess2Impl;

  String get message;

  /// Create a copy of ConfirmStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailSucsess2ImplCopyWith<_$ConfirmEmailSucsess2Impl>
      get copyWith => throw _privateConstructorUsedError;
}
