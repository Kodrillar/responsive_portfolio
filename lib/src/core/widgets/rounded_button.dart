import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    BimStringsData bimStringsData = BimStrings.instance.strings;
    return ElevatedButton(
      onPressed: () {},
      child: Text(bimStringsData.heroButton),
    );
  }
}
