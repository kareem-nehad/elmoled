import 'package:elmoled/constants.dart';
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
      home: IntroductionScreen(
        pages: introPages,
        skip: const Text('Skip'),
        showNextButton: false,
        showSkipButton: true,
        showDoneButton: false,
      ),
    );
  }
}
