import 'package:chatdemo/core/shared_widgets/custom_status_item.dart';
import 'package:chatdemo/core/theming/app_color.dart';
import 'package:chatdemo/features/calls/pressentaion/views/wisgets/calls_screen_list_view.dart';
import 'package:chatdemo/features/calls/pressentaion/views/wisgets/custom_calls_item.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14),
      child: CallsScreenListView(),
    );
  }
}
