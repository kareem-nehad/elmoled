import 'package:elmoled/constants.dart';
import 'package:elmoled/screens/intro_screen/intro_screen.dart';
import 'package:elmoled/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: fontFamily,
        primarySwatch: primaryBlack
      ),
      home: const IntroScreen(),
      routes: {
        '/login' : (context) => const LoginPage(),
      },
    );
  }
}
