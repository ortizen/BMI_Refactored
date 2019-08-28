import 'package:bmi_refactored/big_button.dart';
import 'package:bmi_refactored/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:flutter/foundation.dart';

class ResultsPage extends StatelessWidget {
  final double bmi;
  final String result;
  final String interpretation;
  ResultsPage({@required this.bmi, this.result, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Your result',
                    style: kTitleStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        result,
                        style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              BigButton(
                  text: 'RECALCULATE',
                  fun: () {
                    Navigator.pop(context);
                  }),
            ]));
  }
}
