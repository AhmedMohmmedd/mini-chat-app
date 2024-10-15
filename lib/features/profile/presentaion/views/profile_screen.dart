import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/profile/presentaion/views/widgets/profile_screen_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: AppStyles.textStyle24,),
        centerTitle: true,
        elevation: .3,
      ),
      body:const Padding(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: ProfileScreenBody(),
        ),
      ),
    );
  }
}
