
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/calls/pressentaion/views/wisgets/calls_screen_list_view.dart';
import 'package:flutter/material.dart';

class CallsScreenBody extends StatelessWidget {
  const CallsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recent',
                style: AppStyles.textStyle16.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
           const CallsScreenListView(),
          ],
        ),
      ),
    );
  }
}
