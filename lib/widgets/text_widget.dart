import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  TextWidget(
      {super.key,
      required this.text,
      this.colors = Colors.black,
      this.isHeading = false});

  final String text;
  Color colors;
  bool isHeading;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colors,
          fontSize: isHeading ? 22 : 14,
          fontFamily: 'Times New Roman',
          fontWeight: isHeading ? FontWeight.bold : FontWeight.normal),
    );
  }
}
