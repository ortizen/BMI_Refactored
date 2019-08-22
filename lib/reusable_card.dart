import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  ReusableCard({@required this.color, @required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: child,
        height: 200.0,
        width: 70.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
