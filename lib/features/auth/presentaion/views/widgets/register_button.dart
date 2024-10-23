import 'package:chatdemo/core/shared_widgets/custom_button.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.nameController,
    required this.passwordController,
    required this.phoneController,
    required this.emailController,
  });
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Register',
      func: () {
        if (nameController.text.length < 5) {
          displayToastMssg('Name must be more than 5 characters', context);
        } else if (!emailController.text.contains('@')) {
          displayToastMssg('Email address isn\'t valid', context);
        } else if (phoneController.text.length != 11) {
          displayToastMssg('Phone number must be 11 characters', context);
        } else if (passwordController.text.length < 8) {
          displayToastMssg('Password must be more than 8 characters', context);
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        }
      },
    );
  }
}

displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
