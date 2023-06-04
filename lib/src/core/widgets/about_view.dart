import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/spaces.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/section_heading.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final BimStringsData strings = BimStrings.instance.strings;
    return RoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(headingData: (
            leadingTitle: strings.aboutLeading,
            trailingTitle: strings.aboutTrailing
          )),
          Spaces.spacerCustomH(Sizes.custom(5)),
          Expanded(
            child: Text(
              strings.aboutContents,
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: BimColors.grey,
                fontSize: Sizes.custom(13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
