import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'package:bmi_refactored/bmi.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BMI>(
      builder: (context) => BMI(181, 60, 25, Gender.male),
      child: MaterialApp(
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
      ),
    );
  }
}
