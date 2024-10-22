import 'package:chatdemo/core/shared_widgets/dafault_text.dart';
import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneTextField({required this.phoneController, super.key});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.emailAddress,
      controller: phoneController,
      label: 'enter your phone number',
      hint: 'your phone number',
      prefix: Icons.phone_android,
      validate: (value) {
        if (value!.isEmpty) {
          return 'Phone number must not be empty';
        }
        return null;
      },
    );
  }
}