import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/features/chats/presentaion/views/chat_screen.dart';
import 'package:chatdemo/features/home/presentaion/views/widgets/custom_date_and_num_ofMaseges_column.dart';
import 'package:chatdemo/features/home/presentaion/views/widgets/custom_name_and_sub_masege_column.dart';
import 'package:flutter/material.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return const ChatScreen();
        }));
      },
      child: Container(
        height: 85,
        width: double.infinity,
        color: Colors.white,
        child:const Padding(
          padding:  EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CustomRoundedImageContiner(
                image: AssetImages.demoImage,
              ),
               SizedBox(
                width: 6,
              ),
              CustomNameAndSubMasegeColumn(),
               Spacer(),
              CustomDateAndNumOfMasegesColumn()
            ],
          ),
        ),
      ),
    );
  }
}
