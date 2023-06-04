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

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: DeskopContentSizedBox(
                child: Column(
                  children: [
                    PortfolioHero(),
                    Spaces.spacerH10,
                    Expanded(child: StatBoxGrid()),
                  ],
                ),
              ),
            ),
            Spaces.spacerW10,
            Expanded(
              child: DeskopContentSizedBox(
                child: Column(
                  children: [
                    const PortfolioScreenAppBar(),
                    Spaces.spacerH10,
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(child: ProfileImage()),
                          Spaces.spacerW10,
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(child: NameSection()),
                                Spaces.spacerH10,
                                const Expanded(
                                    flex: 3, child: LocationSection()),
                                Spaces.spacerH10,
                                const Expanded(child: SocialIconList())
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Spaces.spacerH10,
        SizedBox(
          height: 220,
          child: Row(
            children: [
              Expanded(flex: 2, child: UIPortfolioSection()),
              Spaces.spacerW10,
              const Expanded(child: AboutSection())
            ],
          ),
        )
      ],
    );
  }
}

class DeskopContentSizedBox extends StatelessWidget {
  const DeskopContentSizedBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.custom(420),
      child: child,
    );
  }
}
