import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Introdection extends StatelessWidget {
  const Introdection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          child: Text(
            'MOBILE DEVELOPER',
            style: Style.montserrat_25(context).copyWith(letterSpacing: 5),
          ),
        ),
        Paragraph(
          text:
              'He my name is mafdt  and i have two years of experance into flutter developer at spyway company im working there for two years as flutter deveopler and im deveolped many project by using flutter such as bookly app,parry app and more ',
          color: Colors.white,
        ),
        SizedBox(
          height: 400,
        ),
        Edgbuttom(
          title: 'MORE',
          color: Colors.white,
        )
      ],
    );
  }
}
