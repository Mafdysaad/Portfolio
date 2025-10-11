import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_drawer.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_enddrawer.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/drawer_items.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/mobile_appbar.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/view_body.dart';
import 'package:portfolio/utils/inheritedwidget.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _HomeState();
}

class _HomeState extends State<Mobile> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation_1;
  late Animation<Offset> animation_2;
  late Tween<double> iconanmate;

  double target = 40;
  @override
  void initState() {
    initanimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext mafdy) {
    return Animationprovider(
      animationController: animationController,
      animation_1: animation_1,
      animation_2: animation_2,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          key: ScrollService().scaffoldKey,
          backgroundColor: Color.fromARGB(255, 6, 6, 6),
          drawer: CustomDrawer(
            items: DrawerItems(),
          ),
          endDrawer: CustomEnddrawer(),
          appBar: MobileAppbar(),
          body: ViewBody()),
    );
  }

  initanimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..forward();

    animation_1 = Tween<Offset>(begin: Offset(0, 1.5), end: Offset(0, 0))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.bounceInOut));
    animation_2 = Tween<Offset>(begin: Offset(1.5, 0), end: Offset(0, 0))
        .animate(CurvedAnimation(
            parent: animationController,
            curve: Interval(.5, 1, curve: Curves.linearToEaseOut)));
  }
}
