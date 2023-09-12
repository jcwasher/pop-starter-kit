enum IodineSource {
  dulse(description: 'Sea Seasonings dulse'),
  kelpPowder(description: 'NOW kelp powder'),
  kelp(description: 'Sea Seasonings kelp'),
  tripleBlendFlakes(description: 'Sea Seasonings triple blend flakes');

  final String description;

  const IodineSource({required this.description});
}
