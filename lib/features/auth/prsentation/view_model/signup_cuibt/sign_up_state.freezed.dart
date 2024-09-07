// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponse signUpResponse) sucsess,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponse signUpResponse)? sucsess,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponse signUpResponse)? sucsess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSucsess value) sucsess,
    required TResult Function(SignUpFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSucsess value)? sucsess,
    TResult? Function(SignUpFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSucsess value)? sucsess,
    TResult Function(SignUpFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpInitialImplCopyWith<$Res> {
  factory _$$SignUpInitialImplCopyWith(
          _$SignUpInitialImpl value, $Res Function(_$SignUpInitialImpl) then) =
      __$$SignUpInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpInitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpInitialImpl>
    implements _$$SignUpInitialImplCopyWith<$Res> {
  __$$SignUpInitialImplCopyWithImpl(
      _$SignUpInitialImpl _value, $Res Function(_$SignUpInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpInitialImpl implements SignUpInitial {
  const _$SignUpInitialImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponse signUpResponse) sucsess,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponse signUpResponse)? sucsess,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponse signUpResponse)? sucsess,
    TResult Function(String message)? failure,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSucsess value) sucsess,
    required TResult Function(SignUpFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSucsess value)? sucsess,
    TResult? Function(SignUpFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSucsess value)? sucsess,
    TResult Function(SignUpFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpInitial implements SignUpState {
  const factory SignUpInitial() = _$SignUpInitialImpl;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<$Res> {
  factory _$$SignUpLoadingImplCopyWith(
          _$SignUpLoadingImpl value, $Res Function(_$SignUpLoadingImpl) then) =
      __$$SignUpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpLoadingImpl>
    implements _$$SignUpLoadingImplCopyWith<$Res> {
  __$$SignUpLoadingImplCopyWithImpl(
      _$SignUpLoadingImpl _value, $Res Function(_$SignUpLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpLoadingImpl implements SignUpLoading {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponse signUpResponse) sucsess,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponse signUpResponse)? sucsess,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponse signUpResponse)? sucsess,
    TResult Function(String message)? failure,
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
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSucsess value) sucsess,
    required TResult Function(SignUpFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSucsess value)? sucsess,
    TResult? Function(SignUpFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSucsess value)? sucsess,
    TResult Function(SignUpFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading implements SignUpState {
  const factory SignUpLoading() = _$SignUpLoadingImpl;
}

/// @nodoc
abstract class _$$SignUpSucsessImplCopyWith<$Res> {
  factory _$$SignUpSucsessImplCopyWith(
          _$SignUpSucsessImpl value, $Res Function(_$SignUpSucsessImpl) then) =
      __$$SignUpSucsessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpResponse signUpResponse});
}

/// @nodoc
class __$$SignUpSucsessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpSucsessImpl>
    implements _$$SignUpSucsessImplCopyWith<$Res> {
  __$$SignUpSucsessImplCopyWithImpl(
      _$SignUpSucsessImpl _value, $Res Function(_$SignUpSucsessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpResponse = null,
  }) {
    return _then(_$SignUpSucsessImpl(
      null == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as SignUpResponse,
    ));
  }
}

/// @nodoc

class _$SignUpSucsessImpl implements SignUpSucsess {
  const _$SignUpSucsessImpl(this.signUpResponse);

  @override
  final SignUpResponse signUpResponse;

  @override
  String toString() {
    return 'SignUpState.sucsess(signUpResponse: $signUpResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSucsessImpl &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSucsessImplCopyWith<_$SignUpSucsessImpl> get copyWith =>
      __$$SignUpSucsessImplCopyWithImpl<_$SignUpSucsessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponse signUpResponse) sucsess,
    required TResult Function(String message) failure,
  }) {
    return sucsess(signUpResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponse signUpResponse)? sucsess,
    TResult? Function(String message)? failure,
  }) {
    return sucsess?.call(signUpResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponse signUpResponse)? sucsess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(signUpResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSucsess value) sucsess,
    required TResult Function(SignUpFailure value) failure,
  }) {
    return sucsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSucsess value)? sucsess,
    TResult? Function(SignUpFailure value)? failure,
  }) {
    return sucsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSucsess value)? sucsess,
    TResult Function(SignUpFailure value)? failure,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(this);
    }
    return orElse();
  }
}

abstract class SignUpSucsess implements SignUpState {
  const factory SignUpSucsess(final SignUpResponse signUpResponse) =
      _$SignUpSucsessImpl;

  SignUpResponse get signUpResponse;
  @JsonKey(ignore: true)
  _$$SignUpSucsessImplCopyWith<_$SignUpSucsessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureImplCopyWith<$Res> {
  factory _$$SignUpFailureImplCopyWith(
          _$SignUpFailureImpl value, $Res Function(_$SignUpFailureImpl) then) =
      __$$SignUpFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignUpFailureImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpFailureImpl>
    implements _$$SignUpFailureImplCopyWith<$Res> {
  __$$SignUpFailureImplCopyWithImpl(
      _$SignUpFailureImpl _value, $Res Function(_$SignUpFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignUpFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailureImpl implements SignUpFailure {
  const _$SignUpFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignUpState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      __$$SignUpFailureImplCopyWithImpl<_$SignUpFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignUpResponse signUpResponse) sucsess,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignUpResponse signUpResponse)? sucsess,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignUpResponse signUpResponse)? sucsess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpInitial value) initial,
    required TResult Function(SignUpLoading value) loading,
    required TResult Function(SignUpSucsess value) sucsess,
    required TResult Function(SignUpFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpInitial value)? initial,
    TResult? Function(SignUpLoading value)? loading,
    TResult? Function(SignUpSucsess value)? sucsess,
    TResult? Function(SignUpFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpInitial value)? initial,
    TResult Function(SignUpLoading value)? loading,
    TResult Function(SignUpSucsess value)? sucsess,
    TResult Function(SignUpFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements SignUpState {
  const factory SignUpFailure(final String message) = _$SignUpFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SignUpFailureImplCopyWith<_$SignUpFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
