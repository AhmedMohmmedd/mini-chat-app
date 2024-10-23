
import 'package:flutter/material.dart';

class CustomRoundedImageContiner extends StatelessWidget {
  const CustomRoundedImageContiner
({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width:120,
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