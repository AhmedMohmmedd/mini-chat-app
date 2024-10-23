
import 'package:chatdemo/core/shared_widgets/custom_status_item.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class CustomCallsItem extends StatelessWidget {
  const CustomCallsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomStatusItem(isViewd: true),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.call,
            color: AppColor.primeryColor,
            size: 28,
          ),
        )
      ],
    );
  }
}
