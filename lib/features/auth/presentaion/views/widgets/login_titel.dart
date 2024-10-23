
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle24,
    );
  }
}
