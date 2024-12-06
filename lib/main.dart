import 'package:chatdemo/features/chats/presentaion/views/chat_screen.dart';
import 'package:chatdemo/features/home/presentaion/views/home_screen.dart';
import 'package:chatdemo/features/splash/presentaion/views/splash_screen.dart';
import 'package:chatdemo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat  App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
