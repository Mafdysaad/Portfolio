import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(
      {super.key,
      required this.text,
      required this.color,
      required this.textalign});
  final String text;
  final Color color;
  final TextAlign? textalign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Style.opeaSans_15_regular(context).copyWith(
        color: color,
      ),
      textAlign: textalign,
    );
  }
}
