import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/spaces.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/about_view.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/hero_content.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/location_view.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/image_view.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/name_view.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/profile/social_icon_list.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/stat_box_grid.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/ui_portfolio_section.dart';

import 'package:portfolioapp_by_the_debo/src/core/widgets/portfolio_app_bar.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PortfolioScreenAppBar(),
        Spaces.spacerH10,
        const PortfolioHero(),
        Spaces.spacerH10,
        SizedBox(
          height: constraints.maxWidth < 456
              ? constraints.maxWidth * 1.415
              : constraints.maxWidth * .305,
          child: StatBoxGrid(
            constraints: constraints,
          ),
        ),
        Spaces.spacerH10,
        const SizedBox(
          height: Sizes.s50 * 5,
          child: ProfileImage(),
        ),
        Spaces.spacerH10,
        SizedBox(
          height: constraints.maxWidth < 379
              ? 240
              : constraints.maxWidth < 408
                  ? 200
                  : constraints.maxWidth < 547
                      ? 180
                      : 150,
          child: const AboutSection(),
        ),
        Spaces.spacerH10,
        NameSection(),
        Spaces.spacerH10,
        const SizedBox(
          height: Sizes.s50 * 4,
          child: LocationSection(),
        ),
        Spaces.spacerH10,
        const SocialIconList(),
        Spaces.spacerH10,
        SizedBox(
          width: double.infinity,
          height: Sizes.s50 * 4.5,
          child: UIPortfolioSection(),
        ),
      ],
    );
  }
}
