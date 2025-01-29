import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/bottom_nav_menu.dart';
import 'package:t_store/features/authentication/screens/password/configuration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [

            /// Email Text Field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields,),

            /// Password Text Field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: (TSizes.spaceBtwInputFields)/2,),

            /// Remember me & Forget Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Remember Me
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                const SizedBox(width: 50,),

                /// Forget Password
                TextButton(
                  onPressed: (){
                    Get.to(() => ForgetPasswordScreen());
                  },
                  child: Text(TTexts.forgetPassword)
                ),

                const SizedBox(height: TSizes.spaceBtwSections,),

              ],

            ),

            /// Signing Button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(() => NavigationMenu());
                },
                child: Text(TTexts.signIn),

              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems,),

            /// Create Account Button

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Get.to(() => const SignupScreen());
                },
                child: Text(TTexts.createAccount),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections,)

          ],
        )
    );
  }
}
