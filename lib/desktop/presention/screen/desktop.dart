import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';
import 'package:portfolio/desktop/presention/screen/widget/homepage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget Function()> pages = [
      () => Homepage(),
      () => Buildpage(
            backgroundColor: Color(0Xffd7d7d7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AboutMe(
                isdesktop: true,
              ),
            ),
          ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffD7D7D7),
      body: ScrollablePositionedList.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index](),
        itemScrollController: ScrollService().drawerScrollController,
      ),
    );
  }
}
