import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              /// Header Text

              const SignupHeading(),

              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Signup Form

              const SignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Form Divider

              const TFormDivider(dividerText: TTexts.orSignUpWith),

              /// Footer Or Signup with IconButtons

              const TSocialButtons(),
            ],

          ),
        ),
      ),

    );
  }
}


