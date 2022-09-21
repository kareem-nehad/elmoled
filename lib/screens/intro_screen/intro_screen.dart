import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: introPages,
      skip: const Text('Skip'),
      onSkip: () {
        Navigator.pushReplacementNamed(context, '/login');
      },
      showNextButton: false,
      showSkipButton: true,
      showDoneButton: false,
    );
  }
}
