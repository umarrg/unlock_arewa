import 'package:unlock_arewa/screens/login.dart';
import 'package:unlock_arewa/components/welcom_screen_data.dart';
import 'package:unlock_arewa/components/welcome_screen_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcomeScreen';
  final List<WelcomeData> welcomeList = [
    WelcomeData(
      title: "Listening App",
      imagePath: 'images/welcome1.svg',
      desc:
          "Register your businesse Look accomodation for rent Create new shop post new item with price",
    ),
    WelcomeData(
      title: "Culture / History",
      imagePath: 'images/welcome2.svg',
      desc: "Find documentaries of any of any kingdom of arewa",
    ),
    WelcomeData(
      title: "Travels / tourist",
      imagePath: 'images/welcome3.svg',
      desc: "Documentaries on all the tourist attractions in the North",
    ),
    WelcomeData(
      title: "Entertainment",
      imagePath: 'images/welcome4.svg',
      desc: "Vote for the best actor/actress or the best song",
    ),
    WelcomeData(
      title: "Adashe",
      imagePath: 'images/welcome5.svg',
      desc:
          "Platform for public donations, contributions from worship centres or any public group",
    ),
    WelcomeData(
      title: "Education / Mentorship",
      imagePath: 'images/welcome6.svg',
      desc:
          "Find video tutorials for innovation Parents can create and add a there child for mentorship",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
        welcomeList,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }
}
