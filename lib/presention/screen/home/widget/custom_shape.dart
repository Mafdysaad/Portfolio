import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key, required this.animation});
  final Animation<Offset> animation;
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
                child: Image.asset(
                    color: const Color.fromARGB(255, 123, 124, 124),
                    Assets.resourceImagesRectangle))),
      ),
    );
  }
}
