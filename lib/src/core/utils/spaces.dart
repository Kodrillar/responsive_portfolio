import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';

class Spaces {
  Spaces._();

  static const SizedBox spacerH10 = SizedBox(height: Sizes.s10);
  static const SizedBox spacerH20 = SizedBox(height: Sizes.s20);
  static const SizedBox spacerH30 = SizedBox(height: Sizes.s30);

  static const SizedBox spacerW10 = SizedBox(width: Sizes.s10);
  static const SizedBox spacerW20 = SizedBox(width: Sizes.s20);
  static const SizedBox spacerW30 = SizedBox(width: Sizes.s30);

  static SizedBox spacerCustomW(double spacerWidth) =>
      SizedBox(height: spacerWidth);
  static SizedBox spacerCustomH(double spacerHeight) =>
      SizedBox(height: spacerHeight);
}
