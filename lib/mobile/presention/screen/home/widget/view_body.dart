import 'package:flutter/material.dart';

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
            left: 0,
            bottom: 0,
            child: const Image(
              image: AssetImage('assets/images/mafdym.png'),
              fit: BoxFit.fill,
              height: double.infinity,
            )),
        CustomShape(),
      ],
    );
  }
}
