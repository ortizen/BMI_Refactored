import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter/foundation.dart';

class BigButton extends StatelessWidget {
  final String text;
  final Function fun;
  BigButton({@required this.text, @required this.fun});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.fun,
      child: Container(
        child: Center(
          child: Text(
            this.text,
            style: kLargeButtonStyle,
          ),
        ),
        color: Color(0xFFB75FF7),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
