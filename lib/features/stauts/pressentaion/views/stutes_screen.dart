import 'package:chatdemo/core/constants/asset_images.dart';
import 'package:chatdemo/core/shared_widgets/custom_rounded_image_continer.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/core/shared_widgets/custom_status_item.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/my_status_section.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/recent_ypdates_list_view.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/viewed_updates_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StautsScreen extends StatelessWidget {
  const StautsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyStatusSection(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Recent updates',
              style: AppStyles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const RecentUpdatesListView(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Viewed updates',
              style: AppStyles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ViewedUpdatesListView(),
        ],
      ),
    );
  }
}
