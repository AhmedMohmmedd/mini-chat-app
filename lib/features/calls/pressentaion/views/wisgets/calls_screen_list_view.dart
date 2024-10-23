
import 'package:chatdemo/features/calls/pressentaion/views/wisgets/custom_calls_item.dart';
import 'package:flutter/material.dart';

class CallsScreenListView extends StatelessWidget {
  const CallsScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: CustomCallsItem(),
        );
      },
    );
  }
}
