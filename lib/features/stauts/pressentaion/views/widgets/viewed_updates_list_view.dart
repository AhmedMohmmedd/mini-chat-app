import 'package:chatdemo/core/shared_widgets/custom_status_item.dart';
import 'package:flutter/cupertino.dart';

class ViewedUpdatesListView extends StatelessWidget {
  const ViewedUpdatesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(bottom:4 ),
            child:  CustomStatusItem(
              isViewd: true,
            ),
          );
        });
  }
}