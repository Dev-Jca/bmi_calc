import 'package:bmi_calc/widgets/icon_content_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/reuseable_card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeContainerColor = Color(0xFF1D1E33);
const inactiveContainerColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCardWidget(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? activeContainerColor
                        : inactiveContainerColor,
                    containerChild: const IconContentWidget(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCardWidget(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeContainerColor
                        : inactiveContainerColor,
                    containerChild: const IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
              child: ReuseableCardWidget(
            color: activeContainerColor,
          )),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReuseableCardWidget(
                    color: activeContainerColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCardWidget(
                    color: activeContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
