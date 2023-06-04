import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.headingData});

  final ({String leadingTitle, String trailingTitle}) headingData;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headingData.leadingTitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: Sizes.s20,
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              headingData.trailingTitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: BimColors.grey,
                fontSize: Sizes.custom(18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
