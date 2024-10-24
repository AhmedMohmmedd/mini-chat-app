
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class CustomMasegesListView extends StatelessWidget {
  const CustomMasegesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BubbleSpecialThree(
          text: 'Hi',
          color: Colors.black45,
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
          isSender: true,
          seen: true,
        ),
        BubbleSpecialThree(
          text: 'Hello, WhatSup',
          color: AppColor.primeryColor,
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
          isSender: false,
        ),
        BubbleSpecialThree(
          text: 'Good, Waht about The Code and UI',
          color: Colors.black45,
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
          isSender: true,
          // seen: true,
          sent: true,
        ),
        BubbleSpecialThree(
          text: 'i hopee you like it',
          color: Colors.black45,
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
          isSender: true,
          // seen: true,
          sent: true,
        ),
      ],
    );
  }
}
