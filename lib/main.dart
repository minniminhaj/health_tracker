import 'package:flutter/material.dart';
import 'package:health_tracker/screens/diet_input_page.dart';
import 'package:health_tracker/screens/home_page.dart';
import 'package:health_tracker/screens/initial_page.dart';
import 'package:health_tracker/screens/news_content_page.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routes: {
        '/': (context) => InitialPage(),
        HomePage.routeName: (context) => HomePage(),
        InputPage.routeName: (context) => InputPage(),
        DietInputPage.routeName: (context) => DietInputPage(),
        NewsContentPage.routeName: (context) => NewsContentPage()
      },
    );
  }
}
