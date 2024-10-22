import 'package:chatdemo/features/home/presentaion/views/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:chatdemo/core/shared_widgets/custom_app_bar.dart';
import 'package:chatdemo/core/theming/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final pages = const [
    HomeScreenBody(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: pages[index],
      // bottomNavigationBar can not Extracted as single widget
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          overlayColor: const MaterialStatePropertyAll(Colors.white),
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                  color: AppColor.primeryColor,
                  fontWeight: FontWeight.w800,
                );
              }
              return const TextStyle(
                color: Colors.grey,
              );
            },
          ),
        ),
        child: NavigationBar(
          elevation: .1,
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          height: 65,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.chat,
                color: AppColor.primeryColor,
              ),
              label: 'Chats',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.emoji_objects,
                color: AppColor.primeryColor,
              ),
              label: 'Status',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.phone,
                color: AppColor.primeryColor,
              ),
              label: 'Calls',
            ),
          ],
        ),
      ),
    );
  }
}
