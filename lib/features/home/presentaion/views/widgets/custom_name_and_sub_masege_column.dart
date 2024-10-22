
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomNameAndSubMasegeColumn extends StatelessWidget {
  const CustomNameAndSubMasegeColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A7Md',
          style: AppStyles.textStyle16,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'how are you now',
          style: AppStyles.textStyle12,
        )
      ],
    );
  }
}
