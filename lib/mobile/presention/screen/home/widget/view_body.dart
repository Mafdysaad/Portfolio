import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_shape.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image(
          alignment: Alignment.centerRight,
          image: AssetImage(Assets.resourceImagesFinalmobile),
          fit: BoxFit.contain,
          height: double.infinity,
        )),
        CustomShape(),
      ],
    );
  }
}
