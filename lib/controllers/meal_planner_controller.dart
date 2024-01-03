// ignore_for_file: unused_element, unused_field

import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/controllers/base_controller.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/additional_muscle_meat.dart';
import 'package:pop_starter_kit/enums/dog_activity_level.dart';
import 'package:pop_starter_kit/enums/dog_life_stage.dart';
import 'package:pop_starter_kit/enums/gut_soother.dart';
import 'package:pop_starter_kit/enums/iodine_source.dart';
import 'package:pop_starter_kit/enums/light_muscle_meat.dart';
import 'package:pop_starter_kit/enums/liver.dart';
import 'package:pop_starter_kit/enums/manganese_source.dart';
import 'package:pop_starter_kit/enums/measurement_system.dart';
import 'package:pop_starter_kit/enums/muscular_organ.dart';
import 'package:pop_starter_kit/enums/omega3_source.dart';
import 'package:pop_starter_kit/enums/secreting_organ.dart';
import 'package:pop_starter_kit/enums/vegetable.dart';
import 'package:pop_starter_kit/enums/vitamin_d_source.dart';
import 'package:pop_starter_kit/enums/vitamin_e_source.dart';
import 'package:pop_starter_kit/enums/zinc_source.dart';
import 'package:pop_starter_kit/models/meaty_bone/meaty_bone.dart';
import 'package:pop_starter_kit/models/transition_recipe/transition_recipe.dart';

class MealPlannerController extends BaseController {
  ValueNotifier<String?> name = ValueNotifier(null);
  ValueNotifier<double?> petWeight = ValueNotifier(null);
  ValueNotifier<DogLifeStage?> lifeStage = ValueNotifier(null);
  ValueNotifier<int?> monthsOld = ValueNotifier(null);
  ValueNotifier<DogActivityLevel?> activityLevel = ValueNotifier(null);
  ValueNotifier<bool?> alreadyRawFed = ValueNotifier(null);
  ValueNotifier<MeasurementSystem> measurementSystem =
      ValueNotifier(MeasurementSystem.imperial);

  ValueNotifier<LightMuscleMeat?> lightMuscleMeat = ValueNotifier(null);
  ValueNotifier<Vegetable?> vegetable = ValueNotifier(null);
  ValueNotifier<GutSoother?> gutSoother = ValueNotifier(null);
  ValueNotifier<MeatyBone?> meatyBone = ValueNotifier(null);
  ValueNotifier<AdditionalMuscleMeat?> additionalMuscleMeat =
      ValueNotifier(null);
  ValueNotifier<MuscularOrgan?> muscularOrgan = ValueNotifier(null);
  ValueNotifier<Liver?> liver = ValueNotifier(null);
  ValueNotifier<SecretingOrgan?> secretingOrgan = ValueNotifier(null);
  ValueNotifier<Omega3Source?> omega3Source = ValueNotifier(null);
  ValueNotifier<IodineSource?> iodineSource = ValueNotifier(null);
  ValueNotifier<VitaminESource?> vitaminESource = ValueNotifier(null);
  ValueNotifier<ManganeseSource?> manganeseSource = ValueNotifier(null);
  ValueNotifier<ZincSource?> zincSource = ValueNotifier(null);
  ValueNotifier<VitaminDSource?> vitaminDSource = ValueNotifier(null);

  bool get isMuscularOrganGreenTripe =>
      MuscularOrgan.greenTripes.contains(muscularOrgan.value);

  bool get isAdditionalMuscleMeatRed =>
      AdditionalMuscleMeat.reds.contains(additionalMuscleMeat.value);

  bool get isOmega3SourceSufficientInVitaminD =>
      Omega3Source.sufficientInVitaminD.contains(omega3Source.value);

  Map<int, TransitionRecipe> transitionRecipes = {};

  void setName(String? value) {
    name.value = value;
  }

  void setWeight(String? petWeightString) {
    petWeight.value = double.tryParse(petWeightString!);
    _calculatePetWeightInGrams();
  }

  void setLifeStage(DogLifeStage? value) {
    lifeStage.value = value;
  }

  void setMonthsOld(int? value) {
    monthsOld.value = value;
    _calculateMealWeightInGrams();
  }

  void setActivityLevel(DogActivityLevel? value) {
    activityLevel.value = value;
    _calculateMealWeightInGrams();
  }

  void setAlreadyRawFed(bool? value) {
    alreadyRawFed.value = value;
  }

  void setMeasurementSystem(MeasurementSystem? value) {
    measurementSystem.value = value!;
    _calculatePetWeightInGrams();
  }

  void setLightMuscleMeat(LightMuscleMeat? value) {
    lightMuscleMeat.value = value;
  }

  void setVegetable(Vegetable? value) {
    vegetable.value = value;
  }

  void setGutSoother(GutSoother? value) {
    gutSoother.value = value;
  }

  void setMeatyBone(MeatyBone? value) {
    meatyBone.value = value;
  }

  void setAdditionalMuscleMeat(AdditionalMuscleMeat? value) {
    additionalMuscleMeat.value = value;
  }

  void setMuscularOrgan(MuscularOrgan? value) {
    muscularOrgan.value = value;
  }

  void setLiver(Liver? value) {
    liver.value = value;
  }

  void setSecretingOrgan(SecretingOrgan? value) {
    secretingOrgan.value = value;
  }

  void setOmega3Source(Omega3Source? value) {
    omega3Source.value = value;
  }

  void setIodineSource(IodineSource? value) {
    iodineSource.value = value;
  }

  void setVitaminESource(VitaminESource? value) {
    vitaminESource.value = value;
  }

  void setManganeseSource(ManganeseSource? value) {
    manganeseSource.value = value;
  }

  void setZincSource(ZincSource? value) {
    zincSource.value = value;
  }

  void setVitaminDSource(VitaminDSource? value) {
    vitaminDSource.value = value;
  }

  void createTransitionRecipe() {
    final step = mealPlannerPageController.transitionStepForCurrentPage;
    if (step == null) return;

    final rawWeight = _rawWeight(step);
    final muscleMeatWeight = _muscleMeatRatio(step) * rawWeight;
    final vegetableWeight = _vegetableRatio(step) * rawWeight;

    switch (step) {
      case 1:
        transitionRecipes[1] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatWeight,
          vegetableWeight: vegetableWeight,
        );
        break;
      case 2:
        final meatyBoneData = _meatyBoneData(rawWeight);

        transitionRecipes[2] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatWeight - meatyBoneData.meatWeight,
          vegetableWeight: vegetableWeight,
          meatyBoneWeight: meatyBoneData.totalWeight,
        );
        break;
      case 3:
        final meatyBoneData = _meatyBoneData(rawWeight);
        final muscleMeatData =
            _muscleMeatData(muscleMeatWeight, meatyBoneData.meatWeight);

        transitionRecipes[3] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatData.lightWeight,
          vegetableWeight: vegetableWeight,
          meatyBoneWeight: meatyBoneData.totalWeight,
          additionalMuscleMeatWeight: muscleMeatData.additionalWeight,
        );
        break;
      case 4:
        final meatyBoneData = _meatyBoneData(rawWeight);
        final muscleMeatData =
            _muscleMeatData(muscleMeatWeight, meatyBoneData.meatWeight);

        transitionRecipes[4] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatData.lightWeight,
          vegetableWeight: vegetableWeight,
          meatyBoneWeight: meatyBoneData.totalWeight,
          additionalMuscleMeatWeight: muscleMeatData.additionalWeight,
          muscularOrganWeight: 0.15 * rawWeight,
        );
        break;
      case 5:
        final meatyBoneData = _meatyBoneData(rawWeight);
        final muscleMeatData =
            _muscleMeatData(muscleMeatWeight, meatyBoneData.meatWeight);

        transitionRecipes[5] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatData.lightWeight,
          vegetableWeight: vegetableWeight,
          meatyBoneWeight: meatyBoneData.totalWeight,
          additionalMuscleMeatWeight: muscleMeatData.additionalWeight,
          muscularOrganWeight: 0.20 * rawWeight,
          liverWeight: 0.03 * rawWeight,
        );
        break;
      case 6:
        final meatyBoneData = _meatyBoneData(rawWeight);
        final muscleMeatData =
            _muscleMeatData(muscleMeatWeight, meatyBoneData.meatWeight);

        transitionRecipes[6] = TransitionRecipe(
          lightMuscleMeatWeight: muscleMeatData.lightWeight,
          vegetableWeight: vegetableWeight,
          meatyBoneWeight: meatyBoneData.totalWeight,
          additionalMuscleMeatWeight: muscleMeatData.additionalWeight,
          muscularOrganWeight: 0.25 * rawWeight,
          liverWeight: 0.03 * rawWeight,
          secretingOrganWeight: 0.07 * rawWeight,
        );
        break;
    }
  }

  var _petWeightInGrams = 0.0;
  var _mealWeightInGrams = 0.0;

  double get _puppyMealToBodyWeightRatio {
    switch (monthsOld.value) {
      case 2:
        return 0.10;
      case 3:
        return 0.09;
      case 4:
        return 0.08;
      case 5:
        return 0.07;
      case 6:
        return 0.06;
      case 7:
        return 0.05;
      case 8:
      case 9:
      case 10:
      case 11:
        return 0.04;
      case 12:
        return 0.03;
      default:
        return 0;
    }
  }

  double get _adultMealToBodyWeightRatio {
    switch (activityLevel.value) {
      case DogActivityLevel.inactive:
        return 0.015;
      case DogActivityLevel.light:
        return 0.02;
      case DogActivityLevel.moderate:
        return 0.03;
      case DogActivityLevel.high:
        return 0.035;
      default:
        return 0;
    }
  }

  double _rawWeight(int step) {
    switch (step) {
      case 1:
        return _mealWeightInGrams / 8;
      case 2:
        return _mealWeightInGrams / 4;
      case 3:
        return _mealWeightInGrams / 2;
      case 4:
        return _mealWeightInGrams / 2;
      case 5:
        return _mealWeightInGrams * 0.75;
      case 6:
        return _mealWeightInGrams;
      default:
        return 0;
    }
  }

  double _muscleMeatRatio(int step) {
    final vegetableRatio = _vegetableRatio(step);

    switch (step) {
      case 1:
        return 1.0 - vegetableRatio;
      case 2:
      case 3:
        return 0.88 - vegetableRatio;
      case 4:
        return 0.78 - vegetableRatio;
      case 5:
        return 0.65 - vegetableRatio;
      case 6:
        return 0.53 - vegetableRatio;
      default:
        return 0;
    }
  }

  double _vegetableRatio(int step) {
    if (vegetable.value == null) return 0;

    switch (step) {
      case 1:
        return 0.25;
      case 2:
        return 0.10;
      case 3:
      case 4:
      case 5:
        return 0.05;
      case 6:
        return 0.03;
      default:
        return 0;
    }
  }

  MeatyBoneData _meatyBoneData(double rawWeight) {
    final boneWeight = 0.12 * rawWeight;
    final totalWeight = boneWeight / meatyBone.value!.boneRatio;
    final meatWeight = totalWeight - boneWeight;

    return MeatyBoneData(
      totalWeight: totalWeight,
      boneWeight: boneWeight,
      meatWeight: meatWeight,
    );
  }

  MuscleMeatData _muscleMeatData(
    double muscleMeatWeight,
    double meatyBoneMeatWeight,
  ) {
    final bonelessMuscleMeatWeight = muscleMeatWeight - meatyBoneMeatWeight;
    var additionalMuscleMeatWeight = 0.0;
    var lightMuscleMeatWeight = additionalMuscleMeat.value == null
        ? bonelessMuscleMeatWeight
        : additionalMuscleMeatWeight = bonelessMuscleMeatWeight / 2;

    return MuscleMeatData(
      lightWeight: lightMuscleMeatWeight,
      additionalWeight: additionalMuscleMeatWeight,
    );
  }

  void _calculatePetWeightInGrams() {
    if (petWeight.value != null) {
      final modifier = measurementSystem.value.isImperial ? 453.592 : 1000;
      _petWeightInGrams = (petWeight.value! * modifier);
    }

    if (lifeStage.value != null) {
      _calculateMealWeightInGrams();
    }
  }

  void _calculateMealWeightInGrams() {
    switch (lifeStage.value!) {
      case DogLifeStage.puppy:
        _mealWeightInGrams = _petWeightInGrams * _puppyMealToBodyWeightRatio;
        break;
      case DogLifeStage.adult:
        _mealWeightInGrams = _petWeightInGrams * _adultMealToBodyWeightRatio;
        break;
    }
  }
}

class MeatyBoneData {
  final double totalWeight;
  final double boneWeight;
  final double meatWeight;

  MeatyBoneData({
    required this.totalWeight,
    required this.boneWeight,
    required this.meatWeight,
  });
}

class MuscleMeatData {
  final double lightWeight;
  final double additionalWeight;

  MuscleMeatData({required this.lightWeight, required this.additionalWeight});
}
