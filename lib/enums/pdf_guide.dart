enum PdfGuide {
  dogRecipes(description: 'Dog Recipes'),
  catRecipes(description: 'Cat Recipes'),
  pickyEater(description: 'Picky Eater Guide'),
  shoppingList(description: 'Shopping List'),
  wholeFood(description: 'Whole Food Guide'),
  rawFeedOnBudget(description: 'How to Feed on a Budget'),
  safeFoods(description: 'Safe Foods to Feed Guide'),
  sourcing(description: 'Sourcing Guide');

  final String description;

  const PdfGuide({required this.description});
}
