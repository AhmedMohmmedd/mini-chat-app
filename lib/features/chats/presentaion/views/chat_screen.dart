import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/chats/presentaion/views/widgets/chat_screen_body.dart';
import 'package:chatdemo/features/chats/presentaion/views/widgets/custom_chat_appbar.dart';
import 'package:chatdemo/features/chats/presentaion/views/widgets/custom_maseges_list_view.dart';
import 'package:chatdemo/features/chats/presentaion/views/widgets/custom_send_message_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar:  CustomChatAppbar(
        username: 'Ahmed Fahem',
        image: AssetImages.profileTestImage,
      ),
      body: ChatScreenBody(),
    );
  }
}
