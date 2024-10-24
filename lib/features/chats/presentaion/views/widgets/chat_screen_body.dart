
import 'package:chatdemo/features/chats/presentaion/views/widgets/custom_maseges_list_view.dart';
import 'package:chatdemo/features/chats/presentaion/views/widgets/custom_send_message_field.dart';
import 'package:flutter/material.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final messageController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        children: [
          const Expanded(
            child: CustomMasegesListView(),
          ),
          CustomSendMessageField(
            messageController: messageController,
          ),
        ],
      ),
    );
  }
}
