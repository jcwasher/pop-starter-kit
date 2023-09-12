enum MeatyBone {
  chickenBack(description: 'chicken back'),
  chickenDrumstick(description: 'chicken drumstick'),
  chickenFoot(description: 'chicken foot'),
  chickenLegQuarter(description: 'chicken leg quarter'),
  chickenNeckWithoutSkin(description: 'chicken neck without skin'),
  chickenWing(description: 'chicken wing'),
  duckFoot(description: 'duck foot'),
  duckNeck(description: 'duck neck'),
  duckWing(description: 'duck wing'),
  lambRibs(description: 'lamb ribs'),
  porkRibs(description: 'pork ribs'),
  rabbitFrontQuarter(description: 'rabbit front quarter'),
  rabbitHindquarter(description: 'rabbit hindquarter'),
  rabbitSpineBack(description: 'rabbit spine/back'),
  turkeyNeck(description: 'turkey neck'),
  turkeyWing(description: 'turkey wing');

  final String description;

  const MeatyBone({required this.description});
}
