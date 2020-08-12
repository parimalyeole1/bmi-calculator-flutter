import 'package:flutter/material.dart';

import 'constants.dart';

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
          height: kSizeBoxedHeight,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
