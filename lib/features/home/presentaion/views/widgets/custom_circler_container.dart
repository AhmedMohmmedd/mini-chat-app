import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomCircleWidget extends StatelessWidget {
  const CustomCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 26,
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '4',
          style: AppStyles.textStyle12.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
