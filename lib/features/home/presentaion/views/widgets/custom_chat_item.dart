
import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomRoundedImageContiner(
            image: AssetImages.demoImage,
          ),
          SizedBox(width: 6,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('A7Md',style: AppStyles.textStyle16,),
              SizedBox(height: 5,),
              Text('how are you now',style: AppStyles.textStyle12,)
            ],
          )
        ],
      ),
    );
  }
}
