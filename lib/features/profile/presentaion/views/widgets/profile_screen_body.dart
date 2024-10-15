import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_button.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/profile/presentaion/views/widgets/custom_profile_image_continer.dart';
import 'package:chatdemo/features/profile/presentaion/views/widgets/custom_profile_text_field.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomProfileImageContiner(),
        const SizedBox(
          height: 14,
        ),
        const Divider(
          color: Colors.grey,
          thickness: .3,
        ),
        const SizedBox(
          height: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: AppStyles.textStyle14,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomProfileTextField(
              controller: TextEditingController(
                text: 'Ahmed Fahem',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Phone',
              style: AppStyles.textStyle14,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomProfileTextField(
              controller: TextEditingController(
                text: '+01225087487',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        CustomButton(
          text: 'Save Profile',
          textColor: Colors.white,
          func: () {},
        ),
      ],
    );
  }
}
