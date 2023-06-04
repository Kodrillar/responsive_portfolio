import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';

enum Views { desktop, tablet, mobile }

Views getView(BoxConstraints constraints) {
  if (constraints.maxWidth < kBreakpointMobile) {
    return Views.mobile;
  } else if (constraints.maxWidth < kBreakpointTablet &&
      constraints.maxWidth >= kBreakpointMobile) {
    return Views.tablet;
  }
  return Views.desktop;
}
