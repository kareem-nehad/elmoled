import 'package:elmoled/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'LOG IN',
        style: TextStyle(
          fontWeight: regularFont,
          color: white,
          fontSize: 14,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String username;
    String password;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Let\'s sign you in',
                  style: TextStyle(
                    fontWeight: regularFont,
                    fontSize: 30,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'Welcome back, you have been missed!',
                  style: TextStyle(fontWeight: regularFont, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Username or email'),
                  onChanged: (value) {
                    username = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 30, top: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: lightGrey,
                    foregroundColor: white,
                    elevation: 5,
                    minimumSize: const Size(300, 50),
                    textStyle: const TextStyle(
                      fontWeight: boldFont,
                      fontSize: 16,
                    ),
                  ),
                  child: const Text('SIGN IN'),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    shadowColor: primary,
                    backgroundColor: primary,
                    foregroundColor: white,
                    elevation: 7,
                    minimumSize: const Size(200, 50),
                    textStyle:
                        const TextStyle(fontWeight: regularFont, fontSize: 16)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/google.svg',
                      color: white,
                      height: 20,
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Continue with Google'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      shadowColor: fbBlue,
                      backgroundColor: fbBlue,
                      foregroundColor: white,
                      elevation: 7,
                      minimumSize: const Size(200, 50),
                      textStyle: const TextStyle(
                          fontWeight: regularFont, fontSize: 16)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        color: white,
                        height: 20,
                        width: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Continue with Facebook'),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Don\'t have an account? Sign up!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
