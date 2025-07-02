import 'package:flutter/material.dart';
import 'package:portfolio/core/function/helperfunction.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/customtextformfiled.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController phone = TextEditingController();
  TextEditingController emial = TextEditingController();
  TextEditingController massage = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  void dispose() {
    phone.dispose();
    emial.dispose();
    massage.dispose();
    name.dispose();
    super.dispose();
  }

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
              texteditingcontroller: name,
            ),
          ),
          Customtextformfiled(
            hint: 'ENTER YOUR EMAIL*',
            typeofkeborad: TextInputType.emailAddress,
            texteditingcontroller: emial,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Customtextformfiled(
              hint: 'PHONE NUMBER',
              typeofkeborad: TextInputType.phone,
              texteditingcontroller: phone,
            ),
          ),
          Customtextformfiled(
            hint: 'YOUR MESSAGE*',
            higth: 200,
            typeofkeborad: TextInputType.multiline,
            texteditingcontroller: massage,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 70),
            child: Edgbuttom(
              title: 'SUBMIT',
              color: Colors.black,
              ontap: () {
                sendemail(
                    context, phone.text, name.text, massage.text, phone.text);

                phone.clear();
                name.clear();
                emial.clear();
                massage.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
