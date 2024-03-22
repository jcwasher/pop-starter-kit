import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_item.freezed.dart';

@freezed
abstract class RecipeItem<T> with _$RecipeItem {
  const RecipeItem._();

  const factory RecipeItem({
    required T food,
    required double amount,
    String? units,
  }) = _RecipeItem;
}
