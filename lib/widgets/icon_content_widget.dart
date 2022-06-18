import 'package:flutter/material.dart';
import 'package:bmi_calc/constants/constants.dart';

const iconSize = 80.0;
const sizedBoxHeight = 15.0;

class IconContentWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContentWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
