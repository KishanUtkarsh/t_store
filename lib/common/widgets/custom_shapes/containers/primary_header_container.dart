import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/formatters/color_converter.dart';
import '../curved_edges/curved_edge_wigit.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
        child: Container(
          color: TColors.primary,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 400,
            child: Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withAlpha(TColorConverter.convertOpacityToAlpha(0.1))
                  ),
                ),
                Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withAlpha(TColorConverter.convertOpacityToAlpha(0.1))
                    )
                ),
                child

                /// Here we add the widgets for the primary header



              ],
            ),
          ),
        )
    );
  }
}
