import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/Info.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/trycustomInmation.dart';
import 'package:portfolio/utils/assets.dart';

import 'package:portfolio/utils/inheritedwidget.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      Assets.resourceImagesMail,
      Assets.resourceImagesGethup,
      Assets.resourceImagesLinkedin
    ];
    return AnimatedBuilder(
      animation: Animationprovider.of(context)!.animation_2,
      builder: (context, child) => SlideTransition(
        position: Animationprovider.of(context)!.animation_2,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Info(),
                Opations(
                  list: List.generate(
                      options.length,
                      (index) =>
                          Image.asset(width: 60, height: 60, options[index])),
                  isVertical: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
