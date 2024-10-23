
import 'package:flutter/cupertino.dart';
import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_styels.dart';

class CustomStatusItem extends StatelessWidget {
  const CustomStatusItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
      children: [
        const CustomRoundedImageContiner(
          image: AssetImages.demoImage,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Fahem',
              style: AppStyles.textStyle16,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Today, 12:00 PM',
              style: AppStyles.textStyle12,
            ),
          ],
        )
      ],
    )
      ],
    );
  }
}
