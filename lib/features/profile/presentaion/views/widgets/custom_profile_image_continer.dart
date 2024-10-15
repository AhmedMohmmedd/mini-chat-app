
import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class CustomProfileImageContiner extends StatelessWidget {
  const CustomProfileImageContiner({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.sizeOf(context).height * .2,
        width: MediaQuery.sizeOf(context).width * .4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              AssetImages.profileTestImage,
            ),
            fit: BoxFit.contain,
          ),
        ),
        child: Stack(
       children: [
         Positioned(
           bottom: 5,
           right: 10,
           child: Container(
             decoration:const BoxDecoration(
               shape: BoxShape.circle,
               color:AppColor.primeryColor,
             ),
             child:const Padding(
               padding:  EdgeInsets.all(4.0),
               child: Icon(
                 Icons.edit_outlined,
                 color: Colors.white ,
                 size: 28,
               ),
             ),
           ),
         ),
       ],
     ),
      ),
    );
  }
}

