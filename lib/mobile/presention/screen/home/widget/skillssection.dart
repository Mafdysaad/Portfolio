import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/skills.dart';

class Skillssection extends StatelessWidget {
  const Skillssection({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildpage(backgroundColor: Color(0Xffd7d7d7), child: Skills());
  }
}
