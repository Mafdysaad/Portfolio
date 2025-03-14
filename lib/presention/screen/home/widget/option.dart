import 'package:flutter/material.dart';
import 'package:portfolio/core/const/animation/animatedwrapper.dart';
import 'package:portfolio/core/utils/assets.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      Assets.resourceImagesMail,
      Assets.resourceImagesGethup,
      Assets.resourceImagesLinkedin
    ];
    return Column(
      //spacing: 29,
      children: options
          .map((item) => AnimatedWrapper(
                child: Image.asset(
                  item,
                  width: 60,
                  height: 60,
                ),
              ))
          .toList(),
    );
  }
}
