import 'package:flutter/material.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/background_image.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_shape.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/details.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: BackgroundImage()),
        Positioned(bottom: 0, child: CustomShape()),
      ],
    );
  }
}
