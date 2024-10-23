import 'package:chatdemo/core/shared_widgets/custom__popup_menu_button.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/profile/presentaion/views/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'WhatsUp',
        style: AppStyles.textStyle24,
      ),
      // centerTitle: true,
      elevation: 1,
      shadowColor: Colors.grey,
      automaticallyImplyLeading: false,
      notificationPredicate: (notification) => false,
      surfaceTintColor: Colors.transparent,
      actions: [
        const Icon(Icons.search),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .04,
        ),
        const CustomPopupMenuButton(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .04,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
