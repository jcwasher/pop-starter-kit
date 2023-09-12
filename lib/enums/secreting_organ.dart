enum SecretingOrgan {
  beefBrain(description: 'beef brain'),
  beefEyeball(description: 'beef eyeball'),
  beefKidney(description: 'beef kidney'),
  beefOvaries(description: 'beef ovaries '),
  beefPancreas(description: 'beef pancreas (or sweetbreads)'),
  beefSpleen(description: 'beef spleen'),
  beefTesticles(description: 'beef testicles'),
  beefThymus(description: 'beef thymus'),
  bisonKidney(description: 'bison kidney'),
  bisonSpleen(description: 'bison spleen'),
  bisonTesticles(description: 'bison testicles'),
  goatBrain(description: 'goat brain'),
  goatKidney(description: 'goat kidney'),
  goatSpleen(description: 'goat spleen '),
  lambBrain(description: 'lamb/mutton brain'),
  lambKidney(description: 'lamb/mutton kidney'),
  lambPancreas(description: 'lamb/mutton pancreas'),
  lambSpleen(description: 'lamb/mutton spleen'),
  porkBrain(description: 'pork brain'),
  porkKidney(description: 'pork kidney'),
  porkPancreas(description: 'pork pancreas'),
  porkSpleen(description: 'pork spleen'),
  rabbitKidney(description: 'rabbit kidney');

  final String description;

  const SecretingOrgan({required this.description});
}
