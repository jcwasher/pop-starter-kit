enum AdditionalMuscleMeat {
  beefChunks(description: 'lean beef chunks'),
  beefFlank(description: 'lean beef flank'),
  beefGround(description: '90/10 ground beef'),
  beefRound(description: 'lean beef round'),
  beefTenderloin(description: 'lean beef tenderloin'),
  bisonGround(description: '90/10 ground bison'),
  chickenBreast(description: 'chicken breast'),
  chickenGround(description: '95/5 ground chicken'),
  chickenThigh(description: 'boneless & skinless chicken thigh'),
  kangarooGround(description: '90/10 ground kangaroo'),
  kangarooLoin(description: 'kangaroo loin'),
  kangarooRump(description: 'kangaroo rump'),
  lambGround(description: '90/10 ground lamb/mutton'),
  porkChops(description: 'lean pork chops'),
  porkGround(description: '90/10 ground pork'),
  porkTenderloin(description: 'lean pork tenderloin'),
  rabbit(description: 'rabbit'),
  turkeyGround(description: '93/7 ground turkey'),
  turkeyThigh(description: 'boneless & skinless turkey thigh');

  final String description;

  const AdditionalMuscleMeat({required this.description});

  static List<AdditionalMuscleMeat> get reds => [
        beefChunks,
        beefFlank,
        beefGround,
        beefRound,
        beefTenderloin,
        bisonGround,
        lambGround,
      ];
}
