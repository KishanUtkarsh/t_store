import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppbar(
          title: Text(
            'Store',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: dark ? TColors.light : TColors.dark),
          ),
          actions: [TCartCounterIcon(callback: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        /// --- Search Bar ---
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        /// ---Featured Brands ---

                        TSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),

                        TGridLayout(
                          itemCount: 4,
                          mainAxisEvent: 88,
                          itemBuilder: (_,index){
                            return GestureDetector(
                              onTap: (){},
                              child: TRoundedContainer(
                                padding: EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [

                                    /// Icon

                                    Flexible(
                                      child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor: dark? TColors.white : TColors.black,
                                      ),
                                    ),

                                    const SizedBox(height: TSizes.spaceBtwItems / 2,),

                                    /// Text

                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TBrandTitleWithVerifiedIcon(title: 'Nike' , brandTextSize: TextSizes.large,),
                                          Text('256 products with high demands',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context).textTheme.labelMedium,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                        )
                      ],
                    ),
                  ),
                )
              ];
            },
            body: Container()));
  }
}

// SingleChildScrollView(
// child: Column(
// children: [
//
// const SizedBox(
// height: TSizes.spaceBtwSections,
// ),
// const TSearchContainer(text: 'Search in Store'),
// const SizedBox(
// height: TSizes.spaceBtwSections,
// ),
// Padding(
// padding:
// const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
// child: TSectionHeading(
// title: 'Featured Brands',
// showActionButton: true,
// ),
// ),
// const SizedBox(
// height: TSizes.spaceBtwItems,
// ),
// ],
// ),
// ),
