import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/dog_life_stage.dart';
import 'package:pop_starter_kit/enums/measurement_system.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

@RoutePage()
class DogMealPlannerAboutPage extends StatefulHookWidget {
  const DogMealPlannerAboutPage({super.key});

  @override
  State<DogMealPlannerAboutPage> createState() =>
      _DogMealPlannerAboutPageState();
}

class _DogMealPlannerAboutPageState extends State<DogMealPlannerAboutPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final nameTextController = useTextEditingController();
    final weightTextController = useTextEditingController();
    final lifeStage = useValueListenable(mealPlannerController.lifeStage);
    final measurementSystem =
        useValueListenable(mealPlannerController.measurementSystem);

    return Column(
      children: [
        Flexible(
          child: Placeholder(),
        ),
        Spacing.verticalSpaceLarge,
        Flexible(
          flex: 2,
          child: FormCard(
            children: [
              FormSection(
                title: 'What\'s your dog\'s name?',
                child: TextField(
                  controller: nameTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: mealPlannerController.setName,
                ),
              ),
              FormSection(
                title: 'How much do they weigh?',
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: weightTextController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        onChanged: mealPlannerController.setWeight,
                      ),
                    ),
                    Spacing.horizontalSpaceSmall,
                    ...MeasurementSystem.values.map(
                      (_measurementSystem) => Row(
                        children: [
                          Radio(
                            groupValue: measurementSystem,
                            visualDensity: VisualDensity.compact,
                            value: _measurementSystem,
                            onChanged:
                                mealPlannerController.setMeasurementSystem,
                          ),
                          Spacing.horizontalSpaceXTiny,
                          Text(_measurementSystem.weightSymbol),
                          if (_measurementSystem ==
                              MeasurementSystem.values.first)
                            Spacing.horizontalSpaceLarge,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FormSection(
                title: 'Are they a puppy or an adult?',
                child: PawsOfPreyDropdownButton<DogLifeStage>(
                  value: lifeStage,
                  items: DogLifeStage.values
                      .map((lifeStage) => DropdownMenuItem<DogLifeStage>(
                            value: lifeStage,
                            child: Text(lifeStage.name),
                          ))
                      .toList(),
                  onChanged: mealPlannerController.setLifeStage,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
