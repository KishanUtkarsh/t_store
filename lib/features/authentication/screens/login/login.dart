import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/appbar_heading.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppHeight,
          child: Column(
            children: [
              /// Logo , Title , Sub-title

              const AppbarHeading(),

              /// login Form

              const LoginForm(),

              /// Space Bar

              const TFormDivider(dividerText: TTexts.orSignInWith),

              /// authentication logo space bar or Footer

              const TSocialButtons(),
            ],
          ),
        )
      ),

    );
  }
}
