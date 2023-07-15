enum VideoGuide {
  designRecipe(description: 'Designing a Recipe Video'),
  transition(description: 'Transition Guide Video'),
  ultimateMealPrep(description: 'Ultimate Meal Prep Video');

  final String description;

  const VideoGuide({required this.description});
}
