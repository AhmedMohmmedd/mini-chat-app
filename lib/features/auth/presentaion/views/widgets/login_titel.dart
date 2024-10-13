
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Log in to your account',
      style: AppStyles.textStyle24,
    );
  }
}
