import 'package:fling_units/fling_units.dart';

enum VitaminDSource {
  chickenEggYolk(description: 'pasture raised chicken egg yolk'),
  duckEggYolk(description: 'pasture raised duck egg yolk'),
  quailEggYolk(description: 'pasture raised quail egg yolk');

  final String description;

  const VitaminDSource({required this.description});

  double amount(double petWeight) {
    switch (this) {
      case VitaminDSource.chickenEggYolk:
        if (petWeight.grams < 25.pounds) {
          return 1.0;
        } else if (petWeight.grams < 50.pounds) {
          return 2.0;
        } else {
          return 3.0;
        }
      case VitaminDSource.duckEggYolk:
        if (petWeight.grams < 50.pounds) {
          return 1.0;
        } else {
          return 2.0;
        }
      case VitaminDSource.quailEggYolk:
        if (petWeight.grams < 25.pounds) {
          return 2.0;
        } else if (petWeight.grams < 50.pounds) {
          return 3.0;
        } else {
          return 4.0;
        }
    }
  }
}
