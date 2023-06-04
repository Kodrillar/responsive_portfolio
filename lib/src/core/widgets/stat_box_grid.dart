import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/spaces.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/models/stat_box.dart';

class StatBoxGrid extends StatelessWidget {
  const StatBoxGrid({super.key, this.constraints});

  final BoxConstraints? constraints;

  double getAspectRatio() {
    if (constraints != null) {
      if (constraints!.maxWidth < 456 && constraints!.maxWidth > 226) {
        return 2.0;
      }
    }

    return 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: Sizes.s10,
      mainAxisSpacing: Sizes.s10,
      crossAxisCount:
          constraints != null && constraints!.maxWidth < 456 ? 1 : 3,
      childAspectRatio: getAspectRatio(),
      physics: const ClampingScrollPhysics(),
      children: [
        for (var statBoxData in StatBoxData.boxesData)
          StatBox(boxData: statBoxData)
      ],
    );
  }
}

class StatBox extends StatelessWidget {
  const StatBox({super.key, required this.boxData});

  final StatBoxData boxData;
  final margin = kPaddding / 2;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(kPaddding),
      color: boxData.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            boxData.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: Sizes.s30,
                  color: boxData.textColor,
                ),
          ),
          Spaces.spacerCustomH(5),
          Text(
            boxData.subtitle,
            style: TextStyle(
              fontSize: Sizes.custom(11),
              fontWeight: FontWeight.w500,
              color: boxData.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
