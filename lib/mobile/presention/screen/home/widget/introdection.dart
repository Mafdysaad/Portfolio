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
              'My name is Mafdy, and I am a Flutter Developer with experience in building responsive and scalable mobile and web applications using Flutter and Dart. I follow clean architecture patterns such as MVVM and use Cubit for state management. I have hands-on experience with Firebase services (Authentication, Firestore, Hosting) and integrate RESTful APIs efficiently.I\'m also familiar with PHP and SQL for back-end development and have experience deploying projects using Firebase Hosting and automating tasks with GitHub Actions (CI/CD). ',
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
