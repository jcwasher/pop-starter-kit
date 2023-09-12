enum LightMuscleMeat {
  chickenBreast(description: 'chicken breast'),
  chickenGround(description: '95/5 ground chicken'),
  chickenThigh(description: 'boneless & skinless chicken thigh'),
  rabbit(description: 'rabbit'),
  turkeyGround(description: '93/7 ground turkey'),
  turkeyThigh(description: 'boneless & skinless turkey thigh');

  final String description;

  const LightMuscleMeat({required this.description});
}
