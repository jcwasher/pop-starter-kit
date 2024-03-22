import 'package:fling_units/fling_units.dart';

enum GutSoother {
  boneBroth(description: 'bone broth'),
  kefir(description: 'kefir'),
  soilBasedProbiotics(description: 'soil-based probiotics'),
  digestiveEnzymes(description: 'digestive enzymes');

  final String description;

  const GutSoother({required this.description});

  double amount(double petWeight) {
    switch (this) {
      case GutSoother.boneBroth:
      case GutSoother.kefir:
        if (petWeight.grams < 25.pounds) {
          return (1 / 8).usCups.asVolume(liters);
        } else if (petWeight.grams < 50.pounds) {
          return (1 / 4).usCups.asVolume(liters);
        } else {
          return (1 / 2).usCups.asVolume(liters);
        }
      case GutSoother.soilBasedProbiotics:
        if (petWeight.grams < 30.pounds) {
          return (1 / 8).usTeaspoons.asVolume(liters);
        } else if (petWeight.grams < 60.pounds) {
          return (3 / 4).usTeaspoons.asVolume(liters);
        } else if (petWeight.grams < 100.pounds) {
          return (1).usTeaspoons.asVolume(liters);
        } else {
          return (1.5).usTeaspoons.asVolume(liters);
        }
      case GutSoother.digestiveEnzymes:
        // TODO: inquire
        return 0;
    }
  }
}
