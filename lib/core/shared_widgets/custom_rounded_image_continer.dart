
import 'package:flutter/material.dart';

class CustomRoundedImageContiner extends StatelessWidget {
  const CustomRoundedImageContiner
({super.key, required this.image, this.height, this.width});
final String image;
final double? height;
final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
        height:height?? 75,
        width:width?? 120,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.contain,
          ),
        ),);
  }
}