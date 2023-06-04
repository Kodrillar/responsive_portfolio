import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/constants.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      this.image,
      this.height,
      this.width,
      this.child,
      this.shape = BoxShape.rectangle,
      this.color,
      this.borderRadius = kBorderRadius,
      this.padding = const EdgeInsets.all(kPaddding),
      this.margin});
  final DecorationImage? image;
  final double? height;
  final double? width;
  final Widget? child;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final BoxShape shape;
  final Color? color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.primary,
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.circular(borderRadius),
        image: image,
        shape: shape,
      ),
      child: child,
    );
  }
}
