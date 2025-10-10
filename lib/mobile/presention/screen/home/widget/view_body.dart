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
            child: const Image(
          alignment: Alignment.center,
          image: AssetImage('assets/images/mmmmm.png'),
          fit: BoxFit.cover,
          height: double.infinity,
        )),
        CustomShape(),
      ],
    );
  }
}
