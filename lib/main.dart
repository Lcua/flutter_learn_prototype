import 'package:flutter/material.dart';
import 'package:learn_flutter_app/screens/welcome_screen.dart';
import 'package:learn_flutter_app/screens/login_screen.dart';
import 'package:learn_flutter_app/screens/registration_screen.dart';
import 'package:learn_flutter_app/screens/quiz_screen.dart';
import 'package:learn_flutter_app/screens/menu_screen.dart';

void main() => runApp(LearnApp());

class LearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          MenuScreen.id: (context) => MenuScreen(),
          QuizScreen.id: (context) => QuizScreen(),
        });
  }
}
