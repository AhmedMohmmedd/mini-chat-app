
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/my_status_section.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/recent_updates_list_view.dart';
import 'package:chatdemo/features/stauts/pressentaion/views/widgets/viewed_updates_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StautsScreenBody extends StatelessWidget {
  const StautsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
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
      ),
    );
  }
}
