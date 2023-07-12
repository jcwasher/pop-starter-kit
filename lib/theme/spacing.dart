import 'package:flutter/material.dart';

abstract class Spacing {
  static const paddingTiny = 8.0;
  static const paddingSmall = 12.0;
  static const paddingMedium = 16.0;
  static const paddingLarge = 20.0;

  static const horizontalSpaceTiny = const SizedBox(width: paddingTiny);
  static const horizontalSpaceSmall = const SizedBox(width: paddingSmall);
  static const horizontalSpaceMedium = const SizedBox(width: paddingMedium);
  static const horizontalSpaceLarge = const SizedBox(width: paddingLarge);

  static const verticalSpaceTiny = const SizedBox(height: paddingTiny);
  static const verticalSpaceSmall = const SizedBox(height: paddingSmall);
  static const verticalSpaceMedium = const SizedBox(height: paddingMedium);
  static const verticalSpaceLarge = const SizedBox(height: paddingLarge);
}
