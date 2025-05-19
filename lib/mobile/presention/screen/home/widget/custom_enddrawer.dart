import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/introdection.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';

class CustomEnddrawer extends StatefulWidget {
  const CustomEnddrawer({
    super.key,
  });

  @override
  State<CustomEnddrawer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomEnddrawer> {
  double _opacity = 0.0;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Buildpage(
          backgroundImage: Assets.resourceImagesBackground,
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(milliseconds: 500),
            child: PersonalInfo(),
          ),
        ),
        Buildpage(
          backgroundImage: "assets/images/FINALPAGROUND.png",
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Introdection(),
          ),
        ),
        Buildpage(
          backgroundColor: Color(0Xffd7d7d7),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: AboutMe(),
          ),
        ),
      ],
    ));
  }
}
