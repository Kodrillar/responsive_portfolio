import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/sizes.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_button.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class PortfolioHero extends StatelessWidget {
  const PortfolioHero({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        child: Wrap(
      runSpacing: Sizes.s10,
      children: [
        Text(
          BimStrings.instance.strings.heroContent,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: RoundedButton(),
        ),
      ],
    ));
  }
}
