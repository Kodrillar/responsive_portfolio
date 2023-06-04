import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';

class ProfileSectionHeading extends StatelessWidget {
  const ProfileSectionHeading(
      {super.key, required this.leading, required this.trailing});

  final String leading;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              leading,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: BimColors.grey,
                  ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              trailing,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600, fontSize: Sizes.s30 / 2),
            ),
          ),
        ),
      ],
    );
  }
}
