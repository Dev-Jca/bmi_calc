import 'package:flutter/material.dart';
import 'package:bmi_calc/constants/constants.dart';

class ButtomButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const ButtomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
