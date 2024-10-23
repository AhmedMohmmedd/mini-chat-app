import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/auth/presentaion/views/login_screen.dart';
import 'package:chatdemo/features/profile/presentaion/views/profile_screen.dart';
import 'package:flutter/material.dart';

enum MenuOptions { newGroup, profile, logout }

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOptions>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: .1,
      color: Colors.white,
      onSelected: (MenuOptions result) {
        switch (result) {
          case MenuOptions.profile:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ProfileScreen();
            }));
            break;
          case MenuOptions.newGroup:
          ////////////////
            break;
          case MenuOptions.logout:
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOptions>>[
        PopupMenuItem<MenuOptions>(
          value: MenuOptions.profile,
          child: Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                'Profile',
                style: AppStyles.textStyle14,
              ),
            ],
          ),
        ),
        PopupMenuItem<MenuOptions>(
          value: MenuOptions.profile,
          child: Row(
            children: [
              const Icon(Icons.group, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'New Group',
                style: AppStyles.textStyle14,
              ),
            ],
          ),
        ),
        PopupMenuItem<MenuOptions>(
          value: MenuOptions.logout,
          child: Row(
            children: [
              const Icon(Icons.logout_rounded, color: Colors.red),
              const SizedBox(width: 10),
              Text(
                'Logout',
                style: AppStyles.textStyle14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
