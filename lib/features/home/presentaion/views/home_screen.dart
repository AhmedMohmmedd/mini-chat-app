import 'package:chatdemo/core/shared_widgets/custom_app_bar.dart';
import 'package:chatdemo/core/theming/app_styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
