import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/dog_activity_level.dart';
import 'package:pop_starter_kit/enums/dog_life_stage.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerHistoryPage extends StatefulHookWidget {
  const DogMealPlannerHistoryPage({super.key});

  @override
  State<DogMealPlannerHistoryPage> createState() =>
      _DogMealPlannerHistoryPageState();
}

class _DogMealPlannerHistoryPageState extends State<DogMealPlannerHistoryPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final lifeStage = useValueListenable(mealPlannerController.lifeStage);
    final monthsOld = useValueListenable(mealPlannerController.monthsOld);
    final activityLevel =
        useValueListenable(mealPlannerController.activityLevel);
    final alreadyRawFed =
        useValueListenable(mealPlannerController.alreadyRawFed);

    return FormCard(
      children: [
        if (lifeStage == DogLifeStage.puppy) ...[
          FormSection(
            title: 'How old are they?',
            child: PawsOfPreyDropdownButton<int>(
              value: monthsOld,
              items: [
                for (int i = 1; i <= 12; i++) ...[
                  DropdownMenuItem<int>(
                    value: i,
                    child: Text('$i month${i > 1 ? 's' : ''}'),
                  ),
                ],
              ],
              onChanged: mealPlannerController.setMonthsOld,
            ),
          ),
        ],
        if (lifeStage == DogLifeStage.adult) ...[
          FormSection(
            title: 'How active are they?',
            child: PawsOfPreyDropdownButton<DogActivityLevel>(
              value: activityLevel,
              items: DogActivityLevel.values
                  .map((activityLevel) => DropdownMenuItem<DogActivityLevel>(
                        value: activityLevel,
                        child: Text(activityLevel.name),
                      ))
                  .toList(),
              onChanged: mealPlannerController.setActivityLevel,
            ),
          ),
        ],
        FormSection(
          title: 'Are they already eating homemade raw food?',
          child: PawsOfPreyDropdownButton<bool>(
            value: alreadyRawFed,
            items: [
              DropdownMenuItem<bool>(
                value: true,
                child: Text('Yes, no transition needed'),
              ),
              DropdownMenuItem<bool>(
                value: false,
                child: Text(
                  'No, I need to transition to homemade raw',
                ),
              ),
            ],
            onChanged: mealPlannerController.setAlreadyRawFed,
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
