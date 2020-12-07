import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colorProperty;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.colorProperty, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: colorProperty,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
