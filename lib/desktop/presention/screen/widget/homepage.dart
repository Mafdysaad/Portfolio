import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:portfolio/desktop/presention/screen/widget/footersection.dart';
import 'package:portfolio/desktop/presention/screen/widget/leftsection.dart';

import 'package:portfolio/desktop/presention/screen/widget/rightsection.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double screenHeight = 800;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * .7,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// LEFT SECTION
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: const Leftsection(),
                ),
              ),

              /// RIGHT SECTION
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Rightsection()
                    .animate(
                      onPlay: (controller) => controller.forward(),
                    )
                    .slide(
                        begin: Offset(0, -1),
                        end: Offset.zero,
                        duration: Duration(seconds: 2)),
              ),
            ],
          ),
        ),

        //Footer
        SizedBox(
          height: screenHeight * .3,
          child: Footersection()
              .animate(
                onPlay: (controller) => controller.forward(),
              )
              .slide(
                  begin: Offset(0, 1), end: Offset.zero, duration: 2.seconds),
        ),
      ],
    );
  }
}
