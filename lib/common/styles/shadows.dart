import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../utils/formatters/color_converter.dart';

class TShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(TColorConverter.convertOpacityToAlpha(0.1)),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(TColorConverter.convertOpacityToAlpha(0.1)),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

}