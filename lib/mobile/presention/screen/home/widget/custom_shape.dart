import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_regtangle.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/details.dart';

import 'package:portfolio/utils/inheritedwidget.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Animationprovider.of(context)!.animation_1,
      builder: (context, child) => AnimatedPositioned(
        bottom: Animationprovider.of(context)!.animation_1.value.distance,
        duration: Duration(microseconds: 300),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FittedBox(
                fit: BoxFit.cover,
                child: CustomRegtangle(
                    higth: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Details()))),
      ),
    );
  }
}
