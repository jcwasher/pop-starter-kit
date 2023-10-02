// ignore_for_file: unused_element, unused_field

import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/controllers/base_controller.dart';
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

class MealPlannerController extends BaseController {
  ValueNotifier<String?> name = ValueNotifier(null);
  ValueNotifier<double?> weight = ValueNotifier(null);
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
      muscularOrgan.value == MuscularOrgan.beefGreenTripe;

  bool get isAdditionalMuscleMeatRed =>
      AdditionalMuscleMeat.reds.contains(additionalMuscleMeat.value);

  bool get isOmega3SourceSufficientInVitaminD =>
      Omega3Source.sufficientInVitaminD.contains(omega3Source.value);

  void setName(String? value) {
    name.value = value;
  }

  void setWeight(String? weightString) {
    weight.value = double.parse(weightString!);
    _calculateWeightInGrams();
  }

  void setLifeStage(DogLifeStage? value) {
    lifeStage.value = value;
  }

  void setMonthsOld(int? value) {
    monthsOld.value = value;
  }

  void setActivityLevel(DogActivityLevel? value) {
    activityLevel.value = value;
  }

  void setAlreadyRawFed(bool? value) {
    alreadyRawFed.value = value;
  }

  void setMeasurementSystem(MeasurementSystem? value) {
    measurementSystem.value = value!;
    _calculateWeightInGrams();
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

  void _calculateWeightInGrams() {
    if (weight.value != null) {
      final modifier = measurementSystem.value.isImperial ? 453.592 : 1000;
      _weightInGrams = (weight.value! * modifier);
    }
  }

  double _weightInGrams = 0.0;

  double _puppyMealToBodyWeightRatioByAge(int monthsOld) {
    switch (monthsOld) {
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
        return 0; // should never reach this point
    }
  }

  double _adultMealToBodyWeightRatioByActivityLevel(
    DogActivityLevel activityLevel,
  ) {
    switch (activityLevel) {
      case DogActivityLevel.inactive:
        return 0.015;
      case DogActivityLevel.light:
        return 0.02;
      case DogActivityLevel.moderate:
        return 0.03;
      case DogActivityLevel.high:
        return 0.035;
    }
  }
}
