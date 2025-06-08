import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/introdection.dart';

class Introdactionsection extends StatelessWidget {
  const Introdactionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildpage(
      backgroundImage: "assets/images/FINALPAGROUND.png",
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Introdection(),
      ),
    );
  }
}
