import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';
import 'input_page.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitleBarText),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'OVERWEIGHT',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quit low, you should eat more.',
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RECALCULATE BMI',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
