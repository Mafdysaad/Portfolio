import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/const/animation/animatedwrapper.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/presention/screen/home/widget/custom_drawer.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

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
    return Scaffold(
        key: _scaffoldkey,
        //backgroundColor: Color(0xff0c0b0b),
        drawer: CustomDrawer(),
        appBar: AppBar(
          leadingWidth: 100,
          toolbarHeight: 100,
          backgroundColor: Color(0xff0c0b0b),
          leading: AnimatedWrapper(
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Image.asset(Assets.resourceImagesCustomDrawer),
            ),
            function: () => _scaffoldkey.currentState?.openDrawer(),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 30),
                child: AnimatedWrapper(
                    child: SvgPicture.asset(Assets.resourceImagesDrawer)))
          ],
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
