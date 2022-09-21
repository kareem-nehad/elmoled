import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

// Introduction Pages
List<PageViewModel> introPages = [
  PageViewModel(
    title: '',
    decoration: const PageDecoration(
      pageColor: Color(0xFFFCD554),
      bodyAlignment: Alignment.center,
    ),
    bodyWidget: Center(
      child: Column(
        children: [
          Image.asset('assets/images/intro_first_logo.png'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text('An online shopping platform'),
          ),
          Image.asset('assets/images/intro_first.png')
        ],
      ),
    ),
  ),
  PageViewModel(
    title: '',
    decoration: const PageDecoration(
        pageColor: Color(0xFFE64243), bodyAlignment: Alignment.center),
    bodyWidget: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/logo_small.png'),
        ),
        Image.asset('assets/images/intro_second.png'),
      ],
    ),
  ),
  PageViewModel(
      title: '',
      decoration: const PageDecoration(
        pageColor: Colors.black,
        bodyAlignment: Alignment.center,
      ),
      bodyWidget: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/logo_small.png'),
          ),
          Column(
            children: [
              Image.asset('assets/images/intro_third.png'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFE64243),
                    elevation: 5,
                    minimumSize: const Size(200, 50),
                    textStyle:
                        const TextStyle(fontWeight: regularFont, fontSize: 16)),
                child: const Text('SIGN IN'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFFE64243),
                    foregroundColor: Colors.white,
                    elevation: 5,
                    minimumSize: const Size(200, 50),
                    textStyle:
                        const TextStyle(fontWeight: regularFont, fontSize: 16)),
                child: const Text('SIGN UP'),
              ),
            ],
          ),
        ],
      )),
];

// Primary swatch
const MaterialColor primaryBlack = MaterialColor(
  0xFF000000,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(0xFF000000),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);

// Fonts
const fontFamily = 'Rubik';
const regularFont = FontWeight.w400;
const mediumFont = FontWeight.w500;
const semiBoldFont = FontWeight.w600;
const boldFont = FontWeight.w700;
