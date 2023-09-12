enum GutSoother {
  boneBroth(description: 'bone broth'),
  kefir(description: 'kefir'),
  soilBasedProbiotics(description: 'soil-based probiotics'),
  digestiveEnzymes(description: 'digestive enzymes');

  final String description;

  const GutSoother({required this.description});
}
