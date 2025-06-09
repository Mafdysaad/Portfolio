import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/customtextformfiled.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 50),
            child: CustomButtom(title: 'CONTACT'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Paragraph(
                text:
                    'My name is Mafdy, and I\’m a graduate of the Egyptian E-Learning University, Faculty of Computer Science. I have a strong interest in software development and specialize in building cross-platform applications using Flutter and Dart',
                color: Colors.black),
          ),
          Image.asset(Assets.resourceImagesSeparatorBlack),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Customtextformfiled(
              hint: 'ENTER YOUR NAME*',
              typeofkeborad: TextInputType.text,
            ),
          ),
          Customtextformfiled(
            hint: 'ENTER YOUR EMAIL*',
            typeofkeborad: TextInputType.emailAddress,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Customtextformfiled(
              hint: 'PHONE NUMBER',
              typeofkeborad: TextInputType.phone,
            ),
          ),
          Customtextformfiled(
            hint: 'YOUR MESSAGE*',
            higth: 200,
            typeofkeborad: TextInputType.multiline,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 70),
            child: Edgbuttom(title: 'SUBMIT', color: Colors.black),
          )
        ],
      ),
    );
  }
}
