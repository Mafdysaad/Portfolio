import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_logo.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_paragraph.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';
import 'package:portfolio/utils/fontstyle.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});
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
        Text(
          'USING NOW:',
          style: Style.montserrat_30_bold(context),
        ),
        SizedBox(
          height: 30,
        ),
        CustomLogo(Assetsname: Assets.resourceImagesFlutter, title: 'FLUTTER'),
        CustomLogo(Assetsname: Assets.resourceImagesDart, title: 'Dart'),
        CustomLogo(
            Assetsname: Assets.resourceImagesRestApi, title: 'RESTFUL API'),
        Text(
          'TOOLS :',
          style: Style.montserrat_30_bold(context),
        ),
        SizedBox(
          height: 30,
        ),
        CustomLogo(
            Assetsname: Assets.resourceImagesFirebase, title: 'FIREBASE'),
        CustomLogo(Assetsname: Assets.resourceImagesVector, title: 'MYSQL'),
        CustomLogo(Assetsname: Assets.resourceImagesAndrid, title: 'ANDRIOD'),
        CustomLogo(Assetsname: Assets.resourceImagesKotlin, title: 'KOTLIN'),
      ],
    );
  }
}
