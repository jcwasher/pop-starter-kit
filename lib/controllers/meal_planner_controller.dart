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
import 'package:pop_starter_kit/enums/meaty_bone.dart';
import 'package:pop_starter_kit/enums/muscular_organ.dart';
import 'package:pop_starter_kit/enums/oily_fish.dart';
import 'package:pop_starter_kit/enums/secreting_organ.dart';
import 'package:pop_starter_kit/enums/vegetable.dart';
import 'package:pop_starter_kit/enums/vitamin_d_source.dart';
import 'package:pop_starter_kit/enums/vitamin_e_source.dart';
import 'package:pop_starter_kit/enums/zinc_source.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step05/transition_step05_ingredients_page.dart';

class MealPlannerController extends BaseController {
  ValueNotifier<Type> currentPage = ValueNotifier(DogMealPlannerAboutPage);

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

  // will be used eventually
  // ignore: unused_field
  double _weightInGrams = 0.0;

  bool get canGoToPrev => currentPage.value != DogMealPlannerAboutPage;

  // currently only handling the transitioning case
  // assume remaining cases are for the transitioning case
  // TODO: split this up into two different index controllers?
  bool get canGoToNext {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        if (name.value == null || name.value!.isEmpty) return false;
        return weight.value != null && lifeStage.value != null;
      case DogMealPlannerHistoryPage:
        if (lifeStage.value == null) return false;
        if (alreadyRawFed.value != false) return false;
        if (lifeStage.value!.isPuppy && monthsOld.value != null) return true;
        return lifeStage.value!.isAdult && activityLevel.value != null;
      case DogMealPlannerTransitionStep01IngredientsPage:
        return lightMuscleMeat.value != null;
      case DogMealPlannerTransitionStep02IngredientsPage:
        return meatyBone.value != null;
      case DogMealPlannerTransitionStep04IngredientsPage:
        return muscularOrgan.value != null;
      case DogMealPlannerTransitionStep05IngredientsPage:
        return liver.value != null;
      default:
        return true;
    }
  }

  List<ValueListenable> get listenablesForCurrentPage {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        return [name, weight, lifeStage];
      case DogMealPlannerHistoryPage:
        return [lifeStage, monthsOld, activityLevel, alreadyRawFed];
      case DogMealPlannerTransitionStep01IngredientsPage:
        return [lightMuscleMeat];
      case DogMealPlannerTransitionStep02IngredientsPage:
        return [meatyBone];
      case DogMealPlannerTransitionStep04IngredientsPage:
        return [muscularOrgan];
      case DogMealPlannerTransitionStep05IngredientsPage:
        return [liver];
      default:
        return [];
    }
  }
}
