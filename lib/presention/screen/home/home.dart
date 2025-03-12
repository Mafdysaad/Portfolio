import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/const/animatedwrapper.dart';
import 'package:portfolio/core/utils/assets.dart';

import 'package:portfolio/presention/screen/home/widget/view_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color(0xff0c0b0b),
          titleSpacing: 42,
          title: AnimatedWrapper(
              child: Image.asset(Assets.resourceImagesCustomDrawer)),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 24),
                child: AnimatedWrapper(
                    child: SvgPicture.asset(Assets.resourceImagesDrawer)))
          ],
          leadingWidth: 200,
        ),
        body: ViewBody(
          animationController: animationController,
          animation_1: animation_1,
          animation_2: animation_2,
        ));
  }

  initanimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
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
