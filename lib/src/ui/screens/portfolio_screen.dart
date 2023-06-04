import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';
import 'package:portfolioapp_by_the_debo/src/core/utils/view_selection.dart';
import 'package:portfolioapp_by_the_debo/src/ui/desktop.dart';
import 'package:portfolioapp_by_the_debo/src/ui/mobile.dart';

import 'package:portfolioapp_by_the_debo/src/ui/tablet.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(kPaddding),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  SizedBox(
                    width: kBreakpointDesktop,
                    child: SafeArea(
                        child: switch (getView(constraints)) {
                      Views.mobile => Mobile(constraints: constraints),
                      Views.tablet => const Tablet(),
                      Views.desktop => const Desktop()
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
