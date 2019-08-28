import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'big_button.dart';
import 'bmi.dart';
import 'constants.dart';
import 'icon_child.dart';
import 'reusable_card.dart';
import 'up_down.dart';
import 'results_page.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BMI>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      bmi.setSex(Gender.male);
                    },
                    color:
                        bmi.getSex() == Gender.male ? kActiveColor : kCardColor,
                    child: IconChild(
                      text: 'MALE',
                      iconType: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      color: bmi.getSex() == Gender.female
                          ? kActiveColor
                          : kCardColor,
                      onTap: () {
                        bmi.setSex(Gender.female);
                      },
                      child: IconChild(
                          text: 'FEMALE', iconType: FontAwesomeIcons.venus)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGTH',
                          style: kTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '${bmi.getHeight()}',
                              style: kStyleNumbers,
                            ),
                            Text(
                              'cm',
                              style: kTextStyle,
                            )
                          ],
                        ),
                        Slider(
                          value: bmi.getHeight().toDouble(),
                          min: 80.0,
                          max: 230.0,
                          activeColor: Color(0xFFa23fee),
                          inactiveColor: Color(0xFF6f42e5),
                          onChanged: (double newValue) {
                            bmi.setHeight(newValue.toInt());
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: UpDown(
                      subtract: bmi.decrementWeigth,
                      number: bmi.getWeight(),
                      text: 'WEIGHT',
                      add: bmi.incrementWeigth,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    child: UpDown(
                      add: bmi.incrementAge,
                      subtract: bmi.decrementAge,
                      number: bmi.getAge(),
                      text: 'AGE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          new BigButton(
              text: 'CALCULATE',
              fun: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                              bmi: bmi.calculateBMI(),
                              result: bmi.getResult(bmi.calculateBMI()),
                              interpretation:
                                  bmi.getFeeback(bmi.calculateBMI()),
                            )));
              }),
        ],
      )),
    );
  }
}
