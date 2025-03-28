import 'package:flutter/material.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/background_image.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_shape.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/details.dart';

class ViewBody extends StatelessWidget {
  const ViewBody(
      {super.key,
      required this.animationController,
      required this.animation_1,
      required this.animation_2});
  final AnimationController animationController;
  final Animation<Offset> animation_1, animation_2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: BackgroundImage()),
        Positioned(
            bottom: 0,
            child: CustomShape(
              animation: animation_1,
              animation_2: animation_2,
            )),
        // Positioned(bottom: 40, child: Details(animation_2: animation_2))
      ],
    );
  }
}
