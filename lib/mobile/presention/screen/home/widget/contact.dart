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
                text: 'hdhh shsdhs ahhdsa ahashdshs', color: Colors.black),
          ),
          Image.asset(Assets.resourceImagesSeparatorBlack),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Customtextformfiled(hint: 'ENTER YOUR NAME*'),
          ),
          Customtextformfiled(hint: 'ENTER YOUR EMAIL*'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Customtextformfiled(hint: 'PHONE NUMBER'),
          ),
          Customtextformfiled(
            hint: 'YOUR MESSAGE*',
            higth: 200,
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
