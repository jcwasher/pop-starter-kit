enum MealPlanner {
  dogs(description: 'Meal Planner for Dogs'),
  cats(description: 'Meal Planner for Cats');

  final String description;

  const MealPlanner({required this.description});
}
