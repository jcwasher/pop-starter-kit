enum VitaminDSource {
  chickenEggYolk(description: 'pasture raised chicken egg yolk'),
  duckEggYolk(description: 'pasture raised duck egg yolk'),
  quailEggYolk(description: 'pasture raised quail egg yolk');

  final String description;

  const VitaminDSource({required this.description});
}
