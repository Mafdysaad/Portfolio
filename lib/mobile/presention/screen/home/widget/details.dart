import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/Info.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/option.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.animation_2});
  final Animation<Offset> animation_2;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation_2,
      builder: (context, child) => SlideTransition(
        position: animation_2,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Info(),
                Options(
                  is_vertical: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
