enum Liver {
  beef(description: 'beef liver'),
  bison(description: 'bison liver'),
  chicken(description: 'chicken liver'),
  deer(description: 'deer liver'),
  duck(description: 'duck liver'),
  emu(description: 'emu liver'),
  goat(description: 'goat liver'),
  goose(description: 'goose liver'),
  lamb(description: 'lamb/mutton liver'),
  pork(description: 'pork liver'),
  rabbit(description: 'rabbit liver'),
  turkey(description: 'turkey liver'),
  veal(description: 'veal liver');

  final String description;

  const Liver({required this.description});
}
