import 'package:chatdemo/features/auth/presentaion/views/widgets/custom_logo_widget.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/email_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/login_row_text.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/login_screen_body.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/login_titel.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/name_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/password_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/phone_text_field.dart';
import 'package:chatdemo/features/auth/presentaion/views/widgets/register_button.dart';
import 'package:flutter/material.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomLogoWidget(),
                const SizedBox(
                  height: 14,
                ),
                const LoginTitle(
                  text: 'Register to your account',
                ),
                const SizedBox(
                  height: 20,
                ),
                NameTextField(
                  nameController: nameController,
                ),
                const SizedBox(
                  height: 14,
                ),
                EmailTextField(
                  emailController: emailController,
                ),
                const SizedBox(
                  height: 14,
                ),
                PhoneTextField(
                  phoneController: phoneController,
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
                RegisterButton(
                  nameController: nameController,
                  passwordController: passwordController,
                  phoneController: phoneController,
                  emailController: emailController,
                ),
                const SizedBox(height: 20),
                const LogInRowText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
