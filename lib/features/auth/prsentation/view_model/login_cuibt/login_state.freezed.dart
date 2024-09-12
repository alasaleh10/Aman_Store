// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

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
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(UserModel user)? sucsess,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(UserModel user)? sucsess,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
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
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$LoginFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements LoginFailure {
  const _$LoginFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements LoginState {
  const factory LoginFailure(final String errorMessage) = _$LoginFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSucsessImplCopyWith<$Res> {
  factory _$$LoginSucsessImplCopyWith(
          _$LoginSucsessImpl value, $Res Function(_$LoginSucsessImpl) then) =
      __$$LoginSucsessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$LoginSucsessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSucsessImpl>
    implements _$$LoginSucsessImplCopyWith<$Res> {
  __$$LoginSucsessImplCopyWithImpl(
      _$LoginSucsessImpl _value, $Res Function(_$LoginSucsessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSucsessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$LoginSucsessImpl implements LoginSucsess {
  const _$LoginSucsessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'LoginState.sucsess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSucsessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSucsessImplCopyWith<_$LoginSucsessImpl> get copyWith =>
      __$$LoginSucsessImplCopyWithImpl<_$LoginSucsessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(UserModel user) sucsess,
    required TResult Function() noInternet,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) {
    return sucsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) {
    return sucsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(this);
    }
    return orElse();
  }
}

abstract class LoginSucsess implements LoginState {
  const factory LoginSucsess(final UserModel user) = _$LoginSucsessImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$LoginSucsessImplCopyWith<_$LoginSucsessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginNoInternetImplCopyWith<$Res> {
  factory _$$LoginNoInternetImplCopyWith(_$LoginNoInternetImpl value,
          $Res Function(_$LoginNoInternetImpl) then) =
      __$$LoginNoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginNoInternetImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginNoInternetImpl>
    implements _$$LoginNoInternetImplCopyWith<$Res> {
  __$$LoginNoInternetImplCopyWithImpl(
      _$LoginNoInternetImpl _value, $Res Function(_$LoginNoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginNoInternetImpl implements LoginNoInternet {
  const _$LoginNoInternetImpl();

  @override
  String toString() {
    return 'LoginState.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginNoInternetImpl);
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginFailure value) failure,
    required TResult Function(LoginSucsess value) sucsess,
    required TResult Function(LoginNoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginFailure value)? failure,
    TResult? Function(LoginSucsess value)? sucsess,
    TResult? Function(LoginNoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginFailure value)? failure,
    TResult Function(LoginSucsess value)? sucsess,
    TResult Function(LoginNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class LoginNoInternet implements LoginState {
  const factory LoginNoInternet() = _$LoginNoInternetImpl;
}
