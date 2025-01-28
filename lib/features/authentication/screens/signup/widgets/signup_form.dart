import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [

          /// First Name & Last Name Input
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)
                  ),
                ),
              ),

              SizedBox(width: TSizes.spaceBtwItems,),

              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)
                  ),
                ),
              ),
            ],
          ),

          ///Username
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            decoration: const  InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: TTexts.username
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          /// Email
          TextFormField(
            decoration: const  InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          /// Phone Number
          TextFormField(
            decoration: const  InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: TTexts.phoneNo
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          /// Password
          TextFormField(
            decoration: const  InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwSections,),

          /// Terms & Conditions Checkbox


          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value){

                  }
                ),
              ),
              
              const SizedBox(width: TSizes.spaceBtwItems,),
              
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${TTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: TTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark? TColors.white: TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark? TColors.white:TColors.primary,
                        )
                    ),
                    TextSpan(
                        text: ' ${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                        text: TTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark? TColors.white: TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark? TColors.white:TColors.primary,
                        )
                    ),

                  ]
                )
              ),
            ],
          ),

          /// Signup Button
          const SizedBox(height: TSizes.spaceBtwSections,),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){
                  Get.to(() => VerifyEmailScreen());
                },
                child: Text(TTexts.createAccount)
            ),
          )

        ],
      ),
    );
  }
}
