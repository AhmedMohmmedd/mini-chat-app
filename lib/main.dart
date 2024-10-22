import 'package:chatdemo/features/auth/presentaion/views/login_screen.dart';
import 'package:chatdemo/features/auth/presentaion/views/sign_up_screen.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
import 'package:chatdemo/features/splash/presentaion/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
