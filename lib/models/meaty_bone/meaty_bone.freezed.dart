// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meaty_bone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeatyBone {
  String get description => throw _privateConstructorUsedError;
  double get boneRatio => throw _privateConstructorUsedError;
  double get muscleMeatRatio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeatyBoneCopyWith<MeatyBone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeatyBoneCopyWith<$Res> {
  factory $MeatyBoneCopyWith(MeatyBone value, $Res Function(MeatyBone) then) =
      _$MeatyBoneCopyWithImpl<$Res, MeatyBone>;
  @useResult
  $Res call({String description, double boneRatio, double muscleMeatRatio});
}

/// @nodoc
class _$MeatyBoneCopyWithImpl<$Res, $Val extends MeatyBone>
    implements $MeatyBoneCopyWith<$Res> {
  _$MeatyBoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? boneRatio = null,
    Object? muscleMeatRatio = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      boneRatio: null == boneRatio
          ? _value.boneRatio
          : boneRatio // ignore: cast_nullable_to_non_nullable
              as double,
      muscleMeatRatio: null == muscleMeatRatio
          ? _value.muscleMeatRatio
          : muscleMeatRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeatyBoneCopyWith<$Res> implements $MeatyBoneCopyWith<$Res> {
  factory _$$_MeatyBoneCopyWith(
          _$_MeatyBone value, $Res Function(_$_MeatyBone) then) =
      __$$_MeatyBoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, double boneRatio, double muscleMeatRatio});
}

/// @nodoc
class __$$_MeatyBoneCopyWithImpl<$Res>
    extends _$MeatyBoneCopyWithImpl<$Res, _$_MeatyBone>
    implements _$$_MeatyBoneCopyWith<$Res> {
  __$$_MeatyBoneCopyWithImpl(
      _$_MeatyBone _value, $Res Function(_$_MeatyBone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? boneRatio = null,
    Object? muscleMeatRatio = null,
  }) {
    return _then(_$_MeatyBone(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      boneRatio: null == boneRatio
          ? _value.boneRatio
          : boneRatio // ignore: cast_nullable_to_non_nullable
              as double,
      muscleMeatRatio: null == muscleMeatRatio
          ? _value.muscleMeatRatio
          : muscleMeatRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MeatyBone implements _MeatyBone {
  const _$_MeatyBone(
      {required this.description,
      required this.boneRatio,
      required this.muscleMeatRatio});

  @override
  final String description;
  @override
  final double boneRatio;
  @override
  final double muscleMeatRatio;

  @override
  String toString() {
    return 'MeatyBone(description: $description, boneRatio: $boneRatio, muscleMeatRatio: $muscleMeatRatio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeatyBone &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.boneRatio, boneRatio) ||
                other.boneRatio == boneRatio) &&
            (identical(other.muscleMeatRatio, muscleMeatRatio) ||
                other.muscleMeatRatio == muscleMeatRatio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, boneRatio, muscleMeatRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeatyBoneCopyWith<_$_MeatyBone> get copyWith =>
      __$$_MeatyBoneCopyWithImpl<_$_MeatyBone>(this, _$identity);
}

abstract class _MeatyBone implements MeatyBone {
  const factory _MeatyBone(
      {required final String description,
      required final double boneRatio,
      required final double muscleMeatRatio}) = _$_MeatyBone;

  @override
  String get description;
  @override
  double get boneRatio;
  @override
  double get muscleMeatRatio;
  @override
  @JsonKey(ignore: true)
  _$$_MeatyBoneCopyWith<_$_MeatyBone> get copyWith =>
      throw _privateConstructorUsedError;
}
