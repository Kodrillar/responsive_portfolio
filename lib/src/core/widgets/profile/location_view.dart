import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/spaces.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/profile_section_heading.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        children: [
          ProfileSectionHeading(
            leading: BimStrings.instance.strings.locationTitle,
            trailing: BimStrings.instance.strings.locationName,
          ),
          Spaces.spacerH10,
          Expanded(child: Image.asset('assets/images/map.png'))
        ],
      ),
    );
  }
}
