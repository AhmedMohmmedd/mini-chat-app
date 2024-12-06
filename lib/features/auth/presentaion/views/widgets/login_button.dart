import 'package:chatdemo/core/shared_widgets/custom_button.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: AppColor.primeryColor,
      text: 'LogIn',
      func: () async {
        if (!emailController.text.contains('@')) {
          displayToastMssg('Email address isn\'t valid', context);
        } else if (passwordController.text.length < 8) {
          displayToastMssg('Password must be more than 8 characters', context);
        } else {
          try {
            var auth = FirebaseAuth.instance;
            UserCredential user = await auth.signInWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text,
            );
            ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Success'),
            ),
          );

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
          } on FirebaseException catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('something went wrong, please try again later'),
              ),
            );
          }

            
        }
      },
    );
  }
}

displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
