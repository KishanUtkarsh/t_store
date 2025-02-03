import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/screens/profile/profile.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/formatters/color_converter.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(

          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark? TColors.black: TColors.white,
          indicatorColor: dark ? TColors.white.withAlpha(TColorConverter.convertOpacityToAlpha(0.1)) : TColors.black.withAlpha(TColorConverter.convertOpacityToAlpha(0.1)),

          destinations: [

            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),

          ],
        ),
      ),

      body: Obx( ()=> controller.screens[controller.selectedIndex.value] ),
    );
  }
}

class NavigationController extends GetxController{

  Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const ProfileScreen(),
  ];

}
