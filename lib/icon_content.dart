import 'package:flutter/material.dart';

const iconSize = 80.0;
const sizeBoxedHeight = 8.0;
const iconLabelFontSize = 18.0;
const iconColour = Color(0xFF8D8E99);

class IconContent extends StatelessWidget {
  static const iconSize = 80.0;
  final iconText;
  final IconData cardIcon;

  IconContent({@required this.iconText, @required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: iconSize,
        ),
        SizedBox(
          height: sizeBoxedHeight,
        ),
        Text(
          iconText,
          style: TextStyle(fontSize: iconLabelFontSize, color: iconColour),
        )
      ],
    );
  }
}
