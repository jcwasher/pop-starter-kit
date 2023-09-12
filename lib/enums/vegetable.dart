enum Vegetable {
  broccoli(description: 'broccoli'),
  butternutSquash(description: 'butternut squash'),
  carrots(description: 'carrots'),
  collards(description: 'collards'),
  cucumber(description: 'cucumber'),
  dandelionGreens(description: 'dandelion greens'),
  kale(description: 'kale'),
  microgreens(description: 'microgreens'),
  pumpkin(description: 'pumpkin'),
  spinach(description: 'spinach'),
  swissChard(description: 'swiss chard'),
  zucchini(description: 'zucchini');

  final String description;

  const Vegetable({required this.description});
}
