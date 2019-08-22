import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF1E205F),
        scaffoldBackgroundColor: Color(0XFF13134E),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
