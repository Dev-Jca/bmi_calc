import 'package:bmi_calc/constants/constants.dart';
import 'package:bmi_calc/widgets/bottom_button_widget.dart';
import 'package:bmi_calc/widgets/reuseable_card_widget.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String comment;

  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.comment,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int resultNum = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCardWidget(
              color: kActiveContainerColor,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    comment,
                    style: kCommentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButtonWidget(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
