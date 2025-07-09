import 'package:flutter/material.dart';
import 'package:portfolio/desktop/presention/screen/widget/custom_buttom.dart';
import 'package:portfolio/desktop/presention/screen/widget/leftsection.dart';

import 'package:portfolio/desktop/presention/screen/widget/rigthsection.dart';

import '../../../core/utils/assets.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;

                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: const Color(0xffD7D7D7),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: const Leftsection(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipPath(
                        clipper: CutRectangleClipper(),
                        child: Rigthsection(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 130, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const CustomButtom(),
                                Expanded(
                                  child: Image.asset(
                                    Assets.resourceImagesFinal,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 180,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
