import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitleBarText),
      ),
      body: SafeArea(
        child: Text('Hello Result Page'),
      ),
    );
  }
}
