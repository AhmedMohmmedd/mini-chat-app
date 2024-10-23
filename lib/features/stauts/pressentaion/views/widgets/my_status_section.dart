import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';
class MyStatusSection extends StatelessWidget {
  const MyStatusSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(children: [
              const CustomRoundedImageContiner(
                image: AssetImages.profileTestImage,
              ),
              Positioned(
                  bottom: 0,
                  right: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:  AppColor.primeryColor,
                        width: 2, 
                      ),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColor.primeryColor,
                      size: 20,
                    ),
                  ))
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Status',
                  style: AppStyles.textStyle16,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Tap to add status update',
                  style: AppStyles.textStyle12,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
