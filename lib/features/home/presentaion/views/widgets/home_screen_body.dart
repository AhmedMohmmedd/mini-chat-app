import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/features/home/presentaion/views/widgets/custom_chat_item.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const CustomChatItem();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primeryColor,
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
