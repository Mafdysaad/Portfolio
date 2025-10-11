import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:portfolio/utils/fontstyle.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'HEY THERE',
              style: Style.soyombo18_sembold(context),
            ),
            SizedBox(
              width: 10,
            ),
            RepaintBoundary(
              child: Text(
                '👋',
                style: Style.soyombo20_bold(context),
              )
                  .animate(
                      onPlay: (controller) =>
                          controller.repeat(period: Duration(seconds: 2)))
                  .shake(
                      hz: 10,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
            )
          ]),
          SizedBox(
            height: 5,
          ),
          Text(
            'Mafdy  Saad',
            style: Style.soyombo20_bold(context).copyWith(fontSize: 30),
            textAlign: TextAlign.end,
          ),
          RepaintBoundary(
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.center,
                child: AnimatedTextKit(
                    pause: Duration(
                      milliseconds: 1200,
                    ),
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText('Senior Flutter Developer',
                          speed: Duration(milliseconds: 60),
                          textStyle:
                              Style.soyombo18_sembold(context).copyWith()),
                      TyperAnimatedText('At  Platform Technologies',
                          speed: Duration(milliseconds: 60),
                          textStyle: Style.soyombo18_sembold(context))
                    ]),
              ),
            ),
          ),
        ]);
  }
}
