import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Style.opeaSans_15_regular(context).copyWith(color: color),
      textAlign: TextAlign.center,
    );
  }
}
