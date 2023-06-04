import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_colors.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class PortfolioScreenAppBar extends StatelessWidget {
  const PortfolioScreenAppBar({super.key});

  Text _styleAppBarText(BuildContext context) {
    final appBarText = BimStrings.instance.strings.appBarTitle;
    final TextStyle? style = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w600);
    try {
      final appBarTextList = appBarText.split('G');

      final text1 = appBarTextList[0];
      final text2 = 'G${appBarTextList[1]}';

      return Text.rich(
        TextSpan(
          text: text1,
          style: style?.copyWith(color: BimColors.grey),
          children: [
            TextSpan(text: text2, style: style),
          ],
        ),
      );
    } catch (e) {
      return Text(appBarText, style: style);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: kPaddding / 2,
          horizontal: kPaddding / 1.2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _styleAppBarText(context),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
          ],
        ));
  }
}
