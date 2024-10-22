import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
   this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSized,
    this.textColor,
    required this.func,
     this.width,
    this.height = 43,
    this.svgPicture, 
  });
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;
  final Widget? svgPicture;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primeryColor,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            shape: RoundedRectangleBorder(
               borderRadius: borderRadius ?? BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
              child:  Text(
                  text,
                  style: AppStyles.textStyle24.copyWith(
                    color: textColor ?? Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
