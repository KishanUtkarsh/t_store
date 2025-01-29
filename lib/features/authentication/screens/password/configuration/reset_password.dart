import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width

              Image(
                image: const AssetImage(
                  TImages.deliveredEmailIllustration,
                ),
                width: THelperFunctions.screenWidth()*0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Title and Sub-title

              Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Text(TTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Buttons

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text(TTexts.done)
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){

                    },
                    child: Text(TTexts.resendEmail),

                ),
              )

            ],


          ),
        ),
      ),

    );
  }
}
