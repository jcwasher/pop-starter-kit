import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/controllers/base_controller.dart';
import 'package:pop_starter_kit/enums/additional_muscle_meat.dart';
import 'package:pop_starter_kit/enums/dog_activity_level.dart';
import 'package:pop_starter_kit/enums/dog_life_stage.dart';
import 'package:pop_starter_kit/enums/gut_soother.dart';
import 'package:pop_starter_kit/enums/iodine_source.dart';
import 'package:pop_starter_kit/enums/light_muscle_meat.dart';
import 'package:pop_starter_kit/enums/liver.dart';
import 'package:pop_starter_kit/enums/measurement_system.dart';
import 'package:pop_starter_kit/enums/meaty_bone.dart';
import 'package:pop_starter_kit/enums/muscular_organ.dart';
import 'package:pop_starter_kit/enums/oily_fish.dart';
import 'package:pop_starter_kit/enums/secreting_organ.dart';
import 'package:pop_starter_kit/enums/vegetable.dart';
import 'package:pop_starter_kit/enums/vitamin_e_source.dart';

class MealPlannerController extends BaseController {
  ValueNotifier<int> index = ValueNotifier(0);

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
  ValueNotifier<OilyFish?> oilyFish = ValueNotifier(null);
  ValueNotifier<IodineSource?> iodineSource = ValueNotifier(null);
  ValueNotifier<VitaminESource?> vitaminESource = ValueNotifier(null);

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

  void setOilyFish(OilyFish? value) {
    oilyFish.value = value;
  }

  void setIodineSource(IodineSource? value) {
    iodineSource.value = value;
  }

  void setVitaminESource(VitaminESource? value) {
    vitaminESource.value = value;
  }

  void _calculateWeightInGrams() {
    if (weight.value != null) {
      final modifier = measurementSystem.value.isImperial ? 453.592 : 1000;
      _weightInGrams = (weight.value! * modifier);
    }
  }

  // will be used eventually
  // ignore: unused_field
  double _weightInGrams = 0.0;

  bool get canGoToPrev => index.value > 0;

  // currently only handling the transitioning case
  // assume remaining cases are for the transitioning case
  // TODO: split this up into two different index controllers
  bool get canGoToNext {
    switch (index.value) {
      case 0:
        if (name.value == null || name.value!.isEmpty) return false;
        return weight.value != null && lifeStage.value != null;
      case 1:
        if (lifeStage.value == null) return false;
        if (alreadyRawFed.value != false) return false;
        if (lifeStage.value!.isPuppy && monthsOld.value != null) return true;
        return lifeStage.value!.isAdult && activityLevel.value != null;
      case 2:
        return lightMuscleMeat.value != null;
      case 4:
        return meatyBone.value != null;
      case 8:
        return muscularOrgan.value != null;
      case 10:
        return liver.value != null;
      default:
        return true;
    }
  }

  List<ValueListenable> get listenablesForCurrentPage {
    switch (index.value) {
      case 0:
        return [name, weight, lifeStage];
      case 1:
        return [lifeStage, monthsOld, activityLevel, alreadyRawFed];
      case 2:
        return [lightMuscleMeat];
      case 4:
        return [meatyBone];
      case 8:
        return [muscularOrgan];
      case 10:
        return [liver];
      default:
        return [];
    }
  }
}
