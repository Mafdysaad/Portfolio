import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_regtangle.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/details.dart';
import 'package:portfolio/utils/assets.dart';

class CustomShape extends StatelessWidget {
  const CustomShape(
      {super.key, required this.animation, required this.animation_2});
  final Animation<Offset> animation;
  final Animation<Offset> animation_2;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => SlideTransition(
        position: animation,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FittedBox(
                fit: BoxFit.cover,
                child: CustomRegtangle(
                    higth: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                      ),
                      child: Details(animation_2: animation_2),
                    )))),
      ),
    );
  }
}
