enum VitaminESource {
  dropsNOW(description: 'NOW vitamin E drops (60 mg)'),
  dropsSolgar(description: 'Solgar vitamin E drops'),
  gelcaps(description: 'Kala Health vitamin E T8 gelcaps');

  final String description;

  const VitaminESource({required this.description});
}
