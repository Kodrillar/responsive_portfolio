import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class StatBoxData {
  const StatBoxData({
    required this.title,
    required this.subtitle,
    required this.color,
    this.textColor,
  });

  final String title;
  final String subtitle;
  final Color color;
  final Color? textColor;

  static final boxesData = [
    StatBoxData(
      color: BimColors.green,
      title: BimStrings.instance.strings.experienceTitle,
      subtitle: BimStrings.instance.strings.experienceSubtitle,
    ),
    StatBoxData(
      color: BimColors.amber,
      title: BimStrings.instance.strings.projectTitle,
      subtitle: BimStrings.instance.strings.projectSubtitle,
      textColor: BimColors.dark,
    ),
    StatBoxData(
      color: BimColors.lightRed,
      title: BimStrings.instance.strings.clientTitle,
      subtitle: BimStrings.instance.strings.clientSubtitle,
    ),
  ];
}
