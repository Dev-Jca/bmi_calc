import 'package:flutter/material.dart';

class ReuseableCardWidget extends StatelessWidget {
  final Color color;
  final Widget? containerChild;
  final Function()? onTap;

  const ReuseableCardWidget({
    Key? key,
    required this.color,
    this.containerChild,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: containerChild,
      ),
    );
  }
}
