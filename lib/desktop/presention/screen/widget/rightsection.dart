import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/desktop/presention/screen/widget/custom_buttom.dart';
import 'package:portfolio/desktop/presention/screen/widget/customshipe.dart';

class Rightsection extends StatelessWidget {
  const Rightsection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constran) {
      return Customshipe(
          width: constran.maxWidth,
          higth: constran.maxHeight,
          child: Padding(
              padding: const EdgeInsets.only(right: 40, top: 20, left: 80),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  width: 20,
                ),
                const CustomButtom()
                    .animate()
                    .scale(
                        begin: Offset(0.0, 0.0),
                        end: Offset(1, 1),
                        duration: 4.seconds,
                        curve: Curves.elasticInOut)
                    .fadeIn(duration: 2.seconds),
                const SizedBox(height: 20),
                Expanded(
                        flex: 1,
                        child: Image.asset(
                          Assets.resourceImagesFinal,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ))
                    .animate()
                    .slide(
                        begin: Offset(-1, 0),
                        end: Offset.zero,
                        duration: Duration(seconds: 4))
                    .fadeIn()
              ])));
    });
  }
}
