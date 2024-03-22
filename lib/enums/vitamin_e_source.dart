enum VitaminESource {
  dropsNOW(description: 'NOW vitamin E drops (60 mg)', units: 'drops'),
  dropsSolgar(description: 'Solgar vitamin E drops', units: 'drops'),
  gelcaps(description: 'Kala Health vitamin E T8 gelcaps', units: 'gelcaps');

  final String description;
  final String units;

  const VitaminESource({required this.description, required this.units});
}
