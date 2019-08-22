import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bmi.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'icon_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BMI>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
          child: ChangeNotifierProvider<BMI>(
        builder: (_) => BMI(181, 60, 25, Gender.male),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                onTap: () {
                  bmi.setSex(Gender.male);
                },
                color: bmi.getSex() == Gender.male ? kActiveColor : kCardColor,
                child: IconChild(
                  text: 'MALE',
                  iconType: FontAwesomeIcons.mars,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                  color:
                      bmi.getSex() == Gender.female ? kActiveColor : kCardColor,
                  onTap: () {
                    bmi.setSex(Gender.female);
                  },
                  child: IconChild(
                      text: 'FEMALE', iconType: FontAwesomeIcons.venus)),
            ),
          ],
        ),
      )),
    );
  }
}
