import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'quiz_screen.dart';
import 'menu_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:learn_flutter_app/components/rounded_button.dart';

//This should only have a logo, the sign in and sign up buttons
//currently used as a simple hub for the screens

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 255, 170, 1.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  text: ['Learn Flutter App'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                title: 'Log in',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(
                title: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
            RoundedButton(
                title: 'Menu',
                onPressed: () {
                  Navigator.pushNamed(context, MenuScreen.id);
                }),
            RoundedButton(
                title: 'Quiz',
                onPressed: () {
                  Navigator.pushNamed(context, QuizScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
