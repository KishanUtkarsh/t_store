import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularNavButton extends StatelessWidget {
  const CircularNavButton({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black
          ),
          onPressed: (){
            OnBoardingController.instance.nextPage();
          },
          child: Icon(Iconsax.arrow_right_3),
        )
    );
  }
}
