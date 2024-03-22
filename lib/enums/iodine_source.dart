import 'package:fling_units/fling_units.dart';

enum IodineSource {
  dulse(description: 'Sea Seasonings dulse'),
  kelpPowder(description: 'NOW kelp powder'),
  kelp(description: 'Sea Seasonings kelp'),
  tripleBlendFlakes(description: 'Sea Seasonings triple blend flakes');

  final String description;

  const IodineSource({
    required this.description,
  });

  Mass get mass {
    switch (this) {
      case IodineSource.dulse:
        return grams(2);
      case IodineSource.kelpPowder:
        return grams(0); // TODO: inquire
      case IodineSource.kelp:
        return grams(3);
      case IodineSource.tripleBlendFlakes:
        return grams(1);
    }
  }
}
