enum VitaminESource {
  dropsNOW(description: 'NOW vitamin E drops (60 mg)', medium: 'drops'),
  dropsSolgar(description: 'Solgar vitamin E drops', medium: 'drops'),
  gelcaps(description: 'Kala Health vitamin E T8 gelcaps', medium: 'gelcaps');

  final String description;
  final String medium;

  const VitaminESource({required this.description, required this.medium});
}
