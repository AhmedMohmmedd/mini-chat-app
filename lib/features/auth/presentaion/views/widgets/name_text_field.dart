import 'package:chatdemo/core/shared_widgets/dafault_text.dart';
import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  final TextEditingController nameController;

  const NameTextField({required this.nameController, super.key});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.emailAddress,
      controller: nameController,
      label: 'enter your name',
      hint: 'your name',
      prefix: Icons.person,
      validate: (value) {
        if (value!.isEmpty) {
          return 'Name must not be empty';
        }
        return null;
      },
    );
  }
}