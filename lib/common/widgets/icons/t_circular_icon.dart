import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/formatters/color_converter.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon(
      {super.key,
      required this.icon,
      this.width,
      this.height,
      this.size = TSizes.lg,
      this.color,
      this.backgroundColor,
      this.onPressed});

  final IconData icon;
  final double? width, height, size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withAlpha(TColorConverter.convertOpacityToAlpha(0.9))
                : TColors.white.withAlpha(TColorConverter.convertOpacityToAlpha(0.9)),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
