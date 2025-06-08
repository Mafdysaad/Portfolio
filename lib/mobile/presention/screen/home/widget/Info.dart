import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:portfolio/utils/fontstyle.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text(
          'HEY THERE',
          style: Style.soyombo18_sembold(context),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '👋',
          style: Style.soyombo18_sembold(context),
        )
            .animate(
                onPlay: (controller) =>
                    controller.repeat(period: Duration(seconds: 2)))
            .shake(
                hz: 4,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut)
      ]),
      Text(
        'Mafdy Saad',
        style: Style.soyombo20_bold(context),
      ),
      AnimatedTextKit(
          pause: Duration(
            milliseconds: 1200,
          ),
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Senior Flutter Developer',
                speed: Duration(milliseconds: 60),
                textStyle: Style.soyombo18_sembold(context)),
            TyperAnimatedText('At Platform Technologies',
                speed: Duration(milliseconds: 60),
                textStyle: Style.soyombo18_sembold(context))
          ]),
    ]);
  }
}
