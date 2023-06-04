import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/spaces.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/section_heading.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/shader.dart';
import 'package:portfolioapp_by_the_debo/src/models/ui_portfolio.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class UIPortfolioSection extends StatelessWidget {
  UIPortfolioSection({super.key});
  final BimStringsData strings = BimStrings.instance.strings;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(headingData: (
            leadingTitle: strings.uiTitleLeading,
            trailingTitle: strings.uiTitleTrailing
          )),
          Spaces.spacerH10,
          const Expanded(child: UIPortfolioSectionContent()),
        ],
      ),
    );
  }
}

class UIPortfolioImage extends StatelessWidget {
  const UIPortfolioImage(
      {super.key, required this.image, this.isMostRecent = false});
  final String image;
  final bool isMostRecent;
  final margin = kPaddding / 4;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.zero,
      width: Sizes.s50 * 2.8,
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      child: isMostRecent ? const ReadMoreShader() : null,
    );
  }
}

class UIPortfolioSectionContent extends StatelessWidget {
  const UIPortfolioSectionContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = UIPortfolioBoxData.images;

    return SizedBox(
      height: Sizes.s50 * 2.9,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return UIPortfolioImage(
                image: imageList[index], isMostRecent: true);
          }
          return UIPortfolioImage(image: imageList[index]);
        },
        separatorBuilder: (context, index) {
          return Spaces.spacerW10;
        },
        itemCount: imageList.length,
      ),
    );
  }
}
