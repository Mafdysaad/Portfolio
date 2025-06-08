import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';

class Aboutmesection extends StatelessWidget {
  const Aboutmesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildpage(
      backgroundColor: Color(0Xffd7d7d7),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: AboutMe(),
      ),
    );
  }
}
