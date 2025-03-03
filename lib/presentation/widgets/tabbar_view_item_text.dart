import 'package:flutter/material.dart';

class TabbarViewItemText extends StatelessWidget {
  final int index;
  final String text;
  final TextStyle textStyle;
  const TabbarViewItemText(
      {super.key,
      required this.index,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 9.0),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
