import 'package:bml_calculator_app/components/bottom_content.dart';
import 'package:bml_calculator_app/consts.dart';
import 'package:bml_calculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../body_mass_index.dart';

// ignore: use_key_in_widget_constructors
class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final Map<BodyMassIndex, String> resultAndBody;

  // ignore: use_key_in_widget_constructors
  const ResultsPage({
    required this.bmiResult,
    required this.resultAndBody
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  '貴方のBMI',
                  style: kLargeTextStlyle,
                ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultAndBody.keys.first.name.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultAndBody.values.first.toString(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: BottomContent(
                bottomtitleLabel: "再びBMIを計算する",
                onTap: () {
                  Navigator.pop(context);
                },
              )),
        ],
      ),
    );
  }
}
