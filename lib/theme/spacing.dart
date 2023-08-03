import 'package:flutter/material.dart';

abstract class Spacing {
  static const comfyWidth = 400.0;
  static const formWidth = 500.0;

  static const paddingXTiny = 4.0;
  static const paddingTiny = 8.0;
  static const paddingSmall = 12.0;
  static const paddingMedium = 16.0;
  static const paddingLarge = 20.0;
  static const paddingXLarge = 24.0;

  static const horizontalSpaceXTiny = const SizedBox(width: paddingXTiny);
  static const horizontalSpaceTiny = const SizedBox(width: paddingTiny);
  static const horizontalSpaceSmall = const SizedBox(width: paddingSmall);
  static const horizontalSpaceMedium = const SizedBox(width: paddingMedium);
  static const horizontalSpaceLarge = const SizedBox(width: paddingLarge);
  static const horizontalSpaceXLarge = const SizedBox(width: paddingXLarge);

  static const verticalSpaceXTiny = const SizedBox(height: paddingXTiny);
  static const verticalSpaceTiny = const SizedBox(height: paddingTiny);
  static const verticalSpaceSmall = const SizedBox(height: paddingSmall);
  static const verticalSpaceMedium = const SizedBox(height: paddingMedium);
  static const verticalSpaceLarge = const SizedBox(height: paddingLarge);
  static const verticalSpaceXLarge = const SizedBox(height: paddingXLarge);

  static const verticalSpaceFormCardSection = const SizedBox(height: 50);
}
