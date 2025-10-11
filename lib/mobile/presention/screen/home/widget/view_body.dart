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
            child: const Image(
          alignment: Alignment.centerLeft,
          image: AssetImage('assets/images/mafdym.png'),
          fit: BoxFit.contain,
          height: double.infinity,
        )),
        CustomShape(),
      ],
    );
  }
}
