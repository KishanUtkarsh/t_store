import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// Header Contents
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                /// Appbar
                const THomeAppbar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Searchbar

                const TSearchContainer(text: 'Search In Store'),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Categories

                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Heading
                      const TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Categories

                      const THomeCategories()
                    ],
                  ),
                )
              ],
            ),
          ),

          /// Body

          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TGridLayout(itemCount: 2, itemBuilder: (_, index) => TProductCardVertical())
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
