import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';

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
              'Hi, I\'m Mafdy, a passionate Flutter Developer based in the UAE. My journey into software development started with a strong interest in design and user experience. I chose Flutter because I love how it allows me to build beautiful apps that run smoothly on both mobile and web.Over time, I’ve gained experience in state management (Cubit), clean architecture (MVVM), Firebase, REST APIs, and even PHP/SQL on the back-end.',
          color: Colors.black,
        ),
        SizedBox(
          height: 15,
        ),
        Paragraph(
          text:
              'I enjoy learning new technologies and constantly improving my skills. Whether it\'s deploying apps using Firebase Hosting, setting up CI/CD pipelines with GitHub Actions, or polishing UI details – I give attention to every part of the development process.I\’m now looking to join a creative team where I can grow and make real impact as a developer',
          color: Colors.black,
        ),
        SizedBox(
          height: 30,
        ),
        Edgbuttom(
          title: 'EXPLOR',
          color: Colors.black,
          ontap: () => ScrollService().scrollToSection(3),
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
            title: 'DESIGN',
            text:
                'I can design the website based on your needs and suggestions. I can also create it from scratch by consulting with you during work.'),
        CustomParagraph(
            image: Assets.resourceImagesMantinace,
            title: 'MAINTENANCE',
            text:
                'In case of any problems or the need for changes, I can introduce new functionalities and solutions.'),
        CustomParagraph(
            image: Assets.resourceImagesDevelopment,
            title: 'DEVELOPMENT',
            text:
                'Based on a project created by me or another one, sent by you, I can program the website to be fully functional and responsive.'),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
