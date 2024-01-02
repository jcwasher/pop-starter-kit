import 'package:freezed_annotation/freezed_annotation.dart';

part 'transition_recipe.freezed.dart';

@freezed
abstract class TransitionRecipe with _$TransitionRecipe {
  const TransitionRecipe._();

  const factory TransitionRecipe({
    double? lightMuscleMeatWeight,
    double? vegetableWeight,
    double? meatyBoneWeight,
    double? additionalMuscleMeatWeight,
    double? muscularOrganWeight,
    double? liverWeight,
    double? secretingOrganWeight,
  }) = _TransitionRecipe;

  String? get lightMuscleMeatWeightString =>
      lightMuscleMeatWeight?.toStringAsFixed(1);
  String? get vegetableWeightString => vegetableWeight?.toStringAsFixed(1);
  String? get meatyBoneWeightString => meatyBoneWeight?.toStringAsFixed(1);
  String? get additionalMuscleMeatWeightString =>
      additionalMuscleMeatWeight?.toStringAsFixed(1);
  String? get muscularOrganWeightString =>
      muscularOrganWeight?.toStringAsFixed(1);
  String? get liverWeightString => liverWeight?.toStringAsFixed(1);
  String? get secretingOrganWeightString =>
      secretingOrganWeight?.toStringAsFixed(1);
}
