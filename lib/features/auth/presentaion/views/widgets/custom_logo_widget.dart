import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * .7,
        child: Image.asset(
          AssetImages.logo,
        ),
      ),
    );
  }
}