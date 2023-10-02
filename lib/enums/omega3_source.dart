enum Omega3Source {
  anchovy(description: 'anchovy'),
  herring(description: 'herring'),
  mackerelCanned(description: 'mackerel canned in water'),
  mackerelRaw(description: 'raw mackerel'),
  rainbowTrout(description: 'rainbow trout'),
  roe(description: 'unseasoned fish roe'),
  salmonCanned(description: 'salmon canned in water'),
  salmonRaw(description: 'raw salmon'),
  sardines(description: 'sardines'),
  sardinesCanned(description: 'sardines canned in water'),
  smelt(description: 'smelt');

  final String description;

  const Omega3Source({required this.description});

  static List<Omega3Source> get sufficientInVitaminD => [
        mackerelCanned,
        mackerelRaw,
        roe,
        salmonCanned,
        salmonRaw,
        sardines,
        sardinesCanned,
      ];
}
