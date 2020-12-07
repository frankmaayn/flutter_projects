import 'package:bmi_calculator/constant_final.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String titleText;
  final IconData iconData;

  IconContent({@required this.titleText, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          titleText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
