import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';

class ReadMoreShader extends StatelessWidget {
  const ReadMoreShader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BimColors.dark.withOpacity(.6),
      child: Center(
        child: Text(
          'Read More',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: Sizes.s20),
        ),
      ),
    );
  }
}
