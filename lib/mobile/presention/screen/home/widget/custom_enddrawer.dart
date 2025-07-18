import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/Introdactionsection.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/contact.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/customportfilio.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/lastsection.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/personalinfo.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/skills.dart';

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
      () => Personalinfo(opacity: _opacity),
      () => Introdactionsection(),
      () => Buildpage(
            backgroundColor: Color(0Xffd7d7d7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AboutMe(
                isdesktop: false,
              ),
            ),
          ),
      () => Skills(
            isdesktop: false,
          ),
      () => Customportfilio(
            isdesktop: false,
          ),
      () => Buildpage(
          backgroundColor: Color(0Xffd7d7d7),
          child: Contact(
            isdescktop: false,
          )),
      () => Container(
            width: double.infinity,
            color: Colors.black,
            child: Lastsection(),
          ),
    ];
    return ScrollablePositionedList.builder(
      itemBuilder: (context, index) => pages[index](),
      itemCount: pages.length,
      itemScrollController: ScrollService.drawerScrollController,
    );
  }
}
