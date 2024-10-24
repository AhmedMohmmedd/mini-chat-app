
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomChatAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatAppbar(
      {super.key, required this.username, required this.image});
  final String username;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          CustomRoundedImageContiner(image: image,width: 100,height: 60,),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              username,
              style: AppStyles.textStyle24,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),

      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.videocam_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
        PopupMenuButton(
          itemBuilder: (context) => [],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
