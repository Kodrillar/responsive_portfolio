import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';

class BimGraphTheme {
  BimGraphTheme._();

  static ThemeData getTheme() => ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: BimColors.dark1,
          onPrimary: Colors.white,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: BimColors.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: BimColors.dark1,
          titleTextStyle: const TextStyle(color: Colors.amber),
          elevation: Sizes.s0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(BimColors.purple),
            textStyle: const MaterialStatePropertyAll(
              TextStyle(fontSize: Sizes.s20),
            ),
            fixedSize: const MaterialStatePropertyAll(
              Size(Sizes.s50 * 3, Sizes.s50),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBorderRadius * 2),
              ),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: Sizes.s40,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
}
