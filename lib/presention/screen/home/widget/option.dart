import 'package:flutter/material.dart';
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
      spacing: 29,
      children: options.map((item) => Image.asset(item)).toList(),
    );
  }
}
