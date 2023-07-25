enum MeasurementSystem {
  imperial(weightSymbol: 'lbs'),
  metric(weightSymbol: 'kg');

  final String weightSymbol;

  const MeasurementSystem({required this.weightSymbol});

  bool get isImperial => this == imperial;
  bool get isMetric => this == metric;
}
