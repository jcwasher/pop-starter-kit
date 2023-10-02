import 'package:freezed_annotation/freezed_annotation.dart';

part 'meaty_bone.freezed.dart';

@freezed
class MeatyBone with _$MeatyBone {
  const factory MeatyBone({
    required String description,
    required double boneRatio,
    required double muscleMeatRatio,
  }) = _MeatyBone;

  factory MeatyBone.chickenBack() => const MeatyBone(
        description: 'chicken back',
        boneRatio: 0.44,
        muscleMeatRatio: 0.56,
      );

  factory MeatyBone.chickenDrumstick() => const MeatyBone(
        description: 'chicken drumstick',
        boneRatio: 0.33,
        muscleMeatRatio: 0.67,
      );

  factory MeatyBone.chickenFoot() => const MeatyBone(
        description: 'chicken foot',
        boneRatio: 0.6,
        muscleMeatRatio: 0.4,
      );

  factory MeatyBone.chickenLegQuarter() => const MeatyBone(
        description: 'chicken leg quarter',
        boneRatio: 0.27,
        muscleMeatRatio: 0.73,
      );

  factory MeatyBone.chickenNeckWithoutSkin() => const MeatyBone(
        description: 'chicken neck without skin',
        boneRatio: 0.5,
        muscleMeatRatio: 0.5,
      );

  factory MeatyBone.chickenWing() => const MeatyBone(
        description: 'chicken wing',
        boneRatio: 0.46,
        muscleMeatRatio: 0.54,
      );

  factory MeatyBone.duckFoot() => const MeatyBone(
        description: 'duck foot',
        boneRatio: 0.6,
        muscleMeatRatio: 0.4,
      );

  factory MeatyBone.duckNeck() => const MeatyBone(
        description: 'duck neck',
        boneRatio: 0.5,
        muscleMeatRatio: 0.5,
      );

  factory MeatyBone.duckWing() => const MeatyBone(
        description: 'duck wing',
        boneRatio: 0.39,
        muscleMeatRatio: 0.61,
      );

  factory MeatyBone.lambRibs() => const MeatyBone(
        description: 'lamb ribs',
        boneRatio: 0.27,
        muscleMeatRatio: 0.73,
      );

  factory MeatyBone.porkRibs() => const MeatyBone(
        description: 'pork ribs',
        boneRatio: 0.35,
        muscleMeatRatio: 0.65,
      );

  factory MeatyBone.rabbitFrontQuarter() => const MeatyBone(
        description: 'rabbit front quarter',
        boneRatio: 0.23,
        muscleMeatRatio: 0.77,
      );

  factory MeatyBone.rabbitHindquarter() => const MeatyBone(
        description: 'rabbit hindquarter',
        boneRatio: 0.17,
        muscleMeatRatio: 0.83,
      );

  factory MeatyBone.rabbitSpineBack() => const MeatyBone(
        description: 'rabbit spine/back',
        boneRatio: 0.15,
        muscleMeatRatio: 0.85,
      );

  factory MeatyBone.turkeyNeck() => const MeatyBone(
        description: 'turkey neck',
        boneRatio: 0.42,
        muscleMeatRatio: 0.58,
      );

  factory MeatyBone.turkeyWing() => const MeatyBone(
        description: 'turkey wing',
        boneRatio: 0.33,
        muscleMeatRatio: 0.67,
      );

  static List<MeatyBone> get values => [
        MeatyBone.chickenBack(),
        MeatyBone.chickenDrumstick(),
        MeatyBone.chickenFoot(),
        MeatyBone.chickenLegQuarter(),
        MeatyBone.chickenNeckWithoutSkin(),
        MeatyBone.chickenWing(),
        MeatyBone.duckFoot(),
        MeatyBone.duckNeck(),
        MeatyBone.duckWing(),
        MeatyBone.lambRibs(),
        MeatyBone.porkRibs(),
        MeatyBone.rabbitFrontQuarter(),
        MeatyBone.rabbitHindquarter(),
        MeatyBone.rabbitSpineBack(),
        MeatyBone.turkeyNeck(),
        MeatyBone.turkeyWing(),
      ];
}
