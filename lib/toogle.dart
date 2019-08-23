import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Toogle extends StatelessWidget {
  final int number;
  final String text;
  final Function add;
  final Function substract;
  Toogle(
      {@required this.number,
      @required this.text,
      @required this.add,
      @required this.substract});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          this.text,
          style: kTextStyle,
        ),
        Text(
          '$number',
          style: kStyleNumbers,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustButton(
              icon: FontAwesomeIcons.plus,
              fun: add,
            ),
            SizedBox(
              width: 0.50,
            ),
            CustButton(
              icon: FontAwesomeIcons.minus,
              fun: substract,
            )
          ],
        )
      ],
    );
  }
}

class CustButton extends StatelessWidget {
  final IconData icon;
  final Function fun;
  CustButton({@required this.icon, @required this.fun});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xFFB75FF7),
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      onPressed: fun,
      child: Icon(icon),
    );
  }
}
