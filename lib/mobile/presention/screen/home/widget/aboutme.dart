import 'package:flutter/material.dart';

import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_paragraph.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        CustomButtom(title: 'ABOUT ME'),
        SizedBox(
          height: 45,
        ),
        Paragraph(
          text:
              'He my name is mafdt  and i have two years of experance into flutter developer at spyway company im working there for two years as flutter deveopler and im deveolped many project by using flutter such as bookly app,parry app and more',
          color: Colors.black,
        ),
        SizedBox(
          height: 15,
        ),
        Paragraph(
          text:
              'He my name is mafdt  and i have two years of experance into flutter developer at spyway company im working there for two years as flutter deveopler and im deveolped many project by using flutter such as bookly app,parry app and more',
          color: Colors.black,
        ),
        SizedBox(
          height: 30,
        ),
        Edgbuttom(
          title: 'EXPLOR',
          color: Colors.black,
        ),
        SizedBox(
          height: 40,
        ),
        Image.asset(Assets.resourceImagesSeparatorBlack),
        SizedBox(
          height: 60,
        ),
        CustomParagraph(
            image: Assets.resourceImagesDesign,
            title: 'hhhhhh',
            text: 'developed and desinge any desinar'),
        CustomParagraph(
            image: Assets.resourceImagesMantinace,
            title: 'hhhhhh',
            text: 'developed and desinge any desinar'),
        CustomParagraph(
            image: Assets.resourceImagesDevelopment,
            title: 'hhhhhh',
            text: 'developed and desinge any desinar'),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
