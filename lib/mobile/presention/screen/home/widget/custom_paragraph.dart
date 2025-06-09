import 'package:flutter/material.dart';

import 'package:portfolio/utils/fontstyle.dart';

class CustomParagraph extends StatelessWidget {
  const CustomParagraph(
      {super.key,
      required this.image,
      required this.text,
      required this.title});
  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(image),
          Text(
            title,
            style: Style.montserrat_17_bold(context),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 15),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: Style.opeaSans_13(context),
          ),
        ),
      ],
    );
  }
}
