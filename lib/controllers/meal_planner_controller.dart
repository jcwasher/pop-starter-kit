import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/controllers/base_controller.dart';
import 'package:pop_starter_kit/enums/dog_activity_level.dart';
import 'package:pop_starter_kit/enums/dog_life_stage.dart';
import 'package:pop_starter_kit/enums/measurement_system.dart';

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

  bool get canGoToPrev => index.value > 0;
  bool get canGoToNext {
    switch (index.value) {
      case 0:
        if (name.value == null || name.value!.isEmpty) return false;
        return weight.value != null && lifeStage.value != null;
      case 1:
        if (lifeStage.value == null) return false;
        if (alreadyRawFed.value == null) return false;
        if (lifeStage.value!.isPuppy && monthsOld.value != null) return true;
        return lifeStage.value!.isAdult && activityLevel.value != null;
      default:
        return false;
    }
  }

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

  void _calculateWeightInGrams() {
    if (weight.value != null) {
      final modifier = measurementSystem.value.isImperial ? 453.592 : 1000;
      _weightInGrams = (weight.value! * modifier);
    }
  }

  // will be used eventually
  // ignore: unused_field
  double _weightInGrams = 0.0;

  List<ValueListenable> get listenablesForCurrentPage {
    switch (index.value) {
      case 0:
        return [name, weight, lifeStage];
      case 1:
        return [lifeStage, monthsOld, activityLevel, alreadyRawFed];
      default:
        return [];
    }
  }
}
