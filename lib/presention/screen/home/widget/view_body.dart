import 'package:flutter/material.dart';

import 'package:portfolio/presention/screen/home/widget/background_image.dart';
import 'package:portfolio/presention/screen/home/widget/custom_shape.dart';
import 'package:portfolio/presention/screen/home/widget/details.dart';

class ViewBody extends StatefulWidget {
  const ViewBody({super.key});

  @override
  State<ViewBody> createState() => _ViewBodyState();
}

class _ViewBodyState extends State<ViewBody> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation_1;
  late Animation<Offset> animation_2;
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
    return Stack(
      children: [
        Positioned(child: BackgroundImage()),
        Positioned(bottom: 0, child: CustomShape(animation: animation_1)),
        Positioned(bottom: 40, child: Details(animation_2: animation_2))
      ],
    );
  }

  initanimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
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
