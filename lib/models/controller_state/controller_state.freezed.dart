// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ControllerStateIdle value) idle,
    required TResult Function(_ControllerStateLoading value) loading,
    required TResult Function(_ControllerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ControllerStateIdle value)? idle,
    TResult? Function(_ControllerStateLoading value)? loading,
    TResult? Function(_ControllerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ControllerStateIdle value)? idle,
    TResult Function(_ControllerStateLoading value)? loading,
    TResult Function(_ControllerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControllerStateCopyWith<$Res> {
  factory $ControllerStateCopyWith(
          ControllerState value, $Res Function(ControllerState) then) =
      _$ControllerStateCopyWithImpl<$Res, ControllerState>;
}

/// @nodoc
class _$ControllerStateCopyWithImpl<$Res, $Val extends ControllerState>
    implements $ControllerStateCopyWith<$Res> {
  _$ControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ControllerStateIdleCopyWith<$Res> {
  factory _$$_ControllerStateIdleCopyWith(_$_ControllerStateIdle value,
          $Res Function(_$_ControllerStateIdle) then) =
      __$$_ControllerStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ControllerStateIdleCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$_ControllerStateIdle>
    implements _$$_ControllerStateIdleCopyWith<$Res> {
  __$$_ControllerStateIdleCopyWithImpl(_$_ControllerStateIdle _value,
      $Res Function(_$_ControllerStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ControllerStateIdle implements _ControllerStateIdle {
  const _$_ControllerStateIdle();

  @override
  String toString() {
    return 'ControllerState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ControllerStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ControllerStateIdle value) idle,
    required TResult Function(_ControllerStateLoading value) loading,
    required TResult Function(_ControllerStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ControllerStateIdle value)? idle,
    TResult? Function(_ControllerStateLoading value)? loading,
    TResult? Function(_ControllerStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ControllerStateIdle value)? idle,
    TResult Function(_ControllerStateLoading value)? loading,
    TResult Function(_ControllerStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _ControllerStateIdle implements ControllerState {
  const factory _ControllerStateIdle() = _$_ControllerStateIdle;
}

/// @nodoc
abstract class _$$_ControllerStateLoadingCopyWith<$Res> {
  factory _$$_ControllerStateLoadingCopyWith(_$_ControllerStateLoading value,
          $Res Function(_$_ControllerStateLoading) then) =
      __$$_ControllerStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ControllerStateLoadingCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$_ControllerStateLoading>
    implements _$$_ControllerStateLoadingCopyWith<$Res> {
  __$$_ControllerStateLoadingCopyWithImpl(_$_ControllerStateLoading _value,
      $Res Function(_$_ControllerStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ControllerStateLoading(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ControllerStateLoading implements _ControllerStateLoading {
  const _$_ControllerStateLoading([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ControllerState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ControllerStateLoading &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ControllerStateLoadingCopyWith<_$_ControllerStateLoading> get copyWith =>
      __$$_ControllerStateLoadingCopyWithImpl<_$_ControllerStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ControllerStateIdle value) idle,
    required TResult Function(_ControllerStateLoading value) loading,
    required TResult Function(_ControllerStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ControllerStateIdle value)? idle,
    TResult? Function(_ControllerStateLoading value)? loading,
    TResult? Function(_ControllerStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ControllerStateIdle value)? idle,
    TResult Function(_ControllerStateLoading value)? loading,
    TResult Function(_ControllerStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ControllerStateLoading implements ControllerState {
  const factory _ControllerStateLoading([final String? message]) =
      _$_ControllerStateLoading;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ControllerStateLoadingCopyWith<_$_ControllerStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ControllerStateErrorCopyWith<$Res> {
  factory _$$_ControllerStateErrorCopyWith(_$_ControllerStateError value,
          $Res Function(_$_ControllerStateError) then) =
      __$$_ControllerStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ControllerStateErrorCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$_ControllerStateError>
    implements _$$_ControllerStateErrorCopyWith<$Res> {
  __$$_ControllerStateErrorCopyWithImpl(_$_ControllerStateError _value,
      $Res Function(_$_ControllerStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ControllerStateError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ControllerStateError implements _ControllerStateError {
  const _$_ControllerStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ControllerState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ControllerStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ControllerStateErrorCopyWith<_$_ControllerStateError> get copyWith =>
      __$$_ControllerStateErrorCopyWithImpl<_$_ControllerStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String? message) loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String? message)? loading,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String? message)? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ControllerStateIdle value) idle,
    required TResult Function(_ControllerStateLoading value) loading,
    required TResult Function(_ControllerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ControllerStateIdle value)? idle,
    TResult? Function(_ControllerStateLoading value)? loading,
    TResult? Function(_ControllerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ControllerStateIdle value)? idle,
    TResult Function(_ControllerStateLoading value)? loading,
    TResult Function(_ControllerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ControllerStateError implements ControllerState {
  const factory _ControllerStateError([final String? message]) =
      _$_ControllerStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ControllerStateErrorCopyWith<_$_ControllerStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
