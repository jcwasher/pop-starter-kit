// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeItem<T> {
  T get food => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get units => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeItemCopyWith<T, RecipeItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemCopyWith<T, $Res> {
  factory $RecipeItemCopyWith(
          RecipeItem<T> value, $Res Function(RecipeItem<T>) then) =
      _$RecipeItemCopyWithImpl<T, $Res, RecipeItem<T>>;
  @useResult
  $Res call({T food, double amount, String? units});
}

/// @nodoc
class _$RecipeItemCopyWithImpl<T, $Res, $Val extends RecipeItem<T>>
    implements $RecipeItemCopyWith<T, $Res> {
  _$RecipeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
    Object? amount = null,
    Object? units = freezed,
  }) {
    return _then(_value.copyWith(
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as T,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeItemCopyWith<T, $Res>
    implements $RecipeItemCopyWith<T, $Res> {
  factory _$$_RecipeItemCopyWith(
          _$_RecipeItem<T> value, $Res Function(_$_RecipeItem<T>) then) =
      __$$_RecipeItemCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T food, double amount, String? units});
}

/// @nodoc
class __$$_RecipeItemCopyWithImpl<T, $Res>
    extends _$RecipeItemCopyWithImpl<T, $Res, _$_RecipeItem<T>>
    implements _$$_RecipeItemCopyWith<T, $Res> {
  __$$_RecipeItemCopyWithImpl(
      _$_RecipeItem<T> _value, $Res Function(_$_RecipeItem<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
    Object? amount = null,
    Object? units = freezed,
  }) {
    return _then(_$_RecipeItem<T>(
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as T,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RecipeItem<T> extends _RecipeItem<T> {
  const _$_RecipeItem({required this.food, required this.amount, this.units})
      : super._();

  @override
  final T food;
  @override
  final double amount;
  @override
  final String? units;

  @override
  String toString() {
    return 'RecipeItem<$T>(food: $food, amount: $amount, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeItem<T> &&
            const DeepCollectionEquality().equals(other.food, food) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(food), amount, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeItemCopyWith<T, _$_RecipeItem<T>> get copyWith =>
      __$$_RecipeItemCopyWithImpl<T, _$_RecipeItem<T>>(this, _$identity);
}

abstract class _RecipeItem<T> extends RecipeItem<T> {
  const factory _RecipeItem(
      {required final T food,
      required final double amount,
      final String? units}) = _$_RecipeItem<T>;
  const _RecipeItem._() : super._();

  @override
  T get food;
  @override
  double get amount;
  @override
  String? get units;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeItemCopyWith<T, _$_RecipeItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
