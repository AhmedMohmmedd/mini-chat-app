import 'dart:html';

import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/auth/presentaion/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

class RegisterRowText extends StatelessWidget {
  const RegisterRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: Text(
            'Register here',
            style: AppStyles.styleReguler10(context).copyWith(
              color: AppColor.primeryColor,
            ),
          ),
        ),
      ],
    );
  }
}
