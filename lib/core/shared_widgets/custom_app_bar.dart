
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'WhatsUp',
        style: AppStyles.textStyle24,
      ),
      centerTitle: true,
      elevation: .3,
      actions: [
        const Icon(Icons.search),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .07,
        ),
        const Icon(Icons.more_vert),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .04,
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
