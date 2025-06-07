import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/Bottomes.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/contact.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/introdection.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/lastsection.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/portofolio.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final ItemScrollController scrollController = ItemScrollController();

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
    final List<Widget Function()> pages = [
      () => Buildpage(
            backgroundImage: Assets.resourceImagesBackground,
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              child: PersonalInfo(),
            ),
          ),
      () => Buildpage(
            backgroundImage: "assets/images/FINALPAGROUND.png",
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Introdection(),
            ),
          ),
      () => Buildpage(
            backgroundColor: Color(0Xffd7d7d7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AboutMe(),
            ),
          ),
      () => Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Assets.resourceImagesPortfoliobackground,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: CustomButtom(
              title: "Portofilio",
            ),
          )),
      () => Container(
            color: Color.fromARGB(255, 26, 26, 26),
            child: Portofolio(),
          ),
      () => Buildpage(backgroundColor: Color(0Xffd7d7d7), child: Contact()),
      () => Container(
            width: double.infinity,
            color: Colors.black,
            child: Lastsection(),
          ),
    ];
    return ScrollablePositionedList.builder(
      itemBuilder: (context, index) => pages[index](),
      itemCount: pages.length,
      itemScrollController: ScrollService().drawerScrollController,
    );
  }
}
