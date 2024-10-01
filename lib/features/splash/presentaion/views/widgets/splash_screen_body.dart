
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
            'assets/images/logo 1.png',
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('The best chat app of this century',
              style: AppStyles.styleReguler10(context))
        ],
      ),
    );
  }
}
