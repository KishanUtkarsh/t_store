import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_strings.dart';


class SignupHeading extends StatelessWidget {
  const SignupHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          TTexts.signupTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
