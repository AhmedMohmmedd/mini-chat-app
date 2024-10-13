import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_button.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/custom_logo_widget.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/email_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/login_button.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/login_titel.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/password_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/register_row_text.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _LoginScreenBodyState extends State<LoginScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomLogoWidget(),
                const SizedBox(
                  height: 14,
                ),
                const LoginTitle(),
                const SizedBox(
                  height: 20,
                ),
                EmailTextField(
                  emailController: emailController,
                ),
                const SizedBox(
                  height: 14,
                ),
                PasswordTextField(
                  passwordController: passwordController,
                  isPasswordVisible: isPasswordVisible,
                  toggleVisibility: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                LoginButton(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                const SizedBox(height: 20),
                const RegisterRowText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
