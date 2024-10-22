
import 'package:chatdemo/features/home/presentaion/views/widgets/custom_circler_container.dart';
import 'package:flutter/material.dart';

class CustomDateAndNumOfMasegesColumn extends StatelessWidget {
  const CustomDateAndNumOfMasegesColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('12:00 pm'),
        SizedBox(
          height: 5,
        ),
        CustomCircleWidget(),
      ],
    );
  }
}
