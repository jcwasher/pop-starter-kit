import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle titleMediumBolder(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w900,
          );

  static TextStyle headlineSmallBolder(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w900,
          );

  static TextStyle labelMediumBolder(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w900,
          );
}
