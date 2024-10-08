import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetImages.logo,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'WhatsUp',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,

              fontSize: 26
              // fontFamily: 'Montserrat'
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'The best chat app of this century',
            style: AppStyles.styleReguler10(context),
          ),
        ],
      ),
    );
  }
}
