import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FittedBox(
            fit: BoxFit.cover,
            child: Image(image: AssetImage(Assets.resourceImagesFinal))));
  }
}
