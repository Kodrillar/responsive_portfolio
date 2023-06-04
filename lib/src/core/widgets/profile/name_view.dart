import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/profile_section_heading.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class NameSection extends StatelessWidget {
  NameSection({super.key});
  final BimStringsData strings = BimStrings.instance.strings;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: ProfileSectionHeading(
        leading: strings.profileTitle,
        trailing: strings.profileName,
      ),
    );
  }
}
