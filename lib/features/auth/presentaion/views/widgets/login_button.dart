import 'package:chatdemo/core/shared_widgets/custom_button.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
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
      text: 'LogIn',
      func: () {
        if(!emailController.text.contains('@')){
          displayToastMssg('Email address isn\'t valid', context);
        }else if(passwordController.text.length < 8){
          displayToastMssg('Password must be more than 8 characters', context);
        }
        else{
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