enum MuscularOrgan {
  beefGreenTripe(description: 'beef green tripe'),
  beefHeart(description: 'beef heart'),
  beefLung(description: 'beef lung '),
  bisonGreenTripe(description: 'bison green tripe'),
  bisonLung(description: 'bison lung'),
  chickenGizzards(description: 'chicken gizzards'),
  chickenHeart(description: 'chicken heart'),
  chickenLung(description: 'chicken lung'),
  duckGizzards(description: 'duck gizzards'),
  duckHeart(description: 'duck heart'),
  duckLung(description: 'duck lung'),
  lambGreenTripe(description: 'lamb/mutton green tripe'),
  lambHeart(description: 'lamb heart'),
  lambLung(description: 'lamb/mutton lung'),
  porkHeart(description: 'pork heart'),
  porkLung(description: 'pork lung'),
  rabbitHeart(description: 'rabbit heart'),
  rabbitLung(description: 'rabbit lung'),
  turkeyGizzards(description: 'turkey gizzards'),
  turkeyHeart(description: 'turkey heart'),
  turkeyLung(description: 'turkey lung');

  final String description;

  const MuscularOrgan({required this.description});

  static List<MuscularOrgan> get greenTripes => [
        MuscularOrgan.beefGreenTripe,
        MuscularOrgan.bisonGreenTripe,
        MuscularOrgan.lambGreenTripe,
      ];
}
