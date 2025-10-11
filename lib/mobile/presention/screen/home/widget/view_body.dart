import 'package:flutter/material.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_shape.dart';

class ViewBody extends StatefulWidget {
  const ViewBody({
    super.key,
  });

  @override
  State<ViewBody> createState() => _ViewBodyState();
}

class _ViewBodyState extends State<ViewBody> {
  void initstate() {
    super.initState();
    precacheImage(const AssetImage('assets/images/mafdym.png'), context);
  }

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
