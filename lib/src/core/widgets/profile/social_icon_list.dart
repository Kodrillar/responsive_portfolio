import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';

import '../rounded_container.dart';

class SocialIconList extends StatelessWidget {
  const SocialIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoundedContainer(
      padding: EdgeInsets.all(kPaddding / 3.5),
      child: Row(
        children: [
          SocialIcon(icon: 'linkedin.png'),
          SocialIcon(icon: 'dribble.png'),
          SocialIcon(icon: 'twitter.png'),
          SocialIcon(icon: 'instagram.png')
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedContainer(
        shape: BoxShape.circle,
        padding: const EdgeInsets.all(kPaddding / 3),
        color: BimColors.dark2,
        height: Sizes.s50 * 1.4,
        child: Image.asset('assets/images/$icon'),
      ),
    );
  }
}
