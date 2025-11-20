import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_shape.dart';

class ViewBody extends StatefulWidget {
  const ViewBody({
    super.key,
  });

  @override
  State<ViewBody> createState() => _ViewBodyState();
}

class _ViewBodyState extends State<ViewBody> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(
        const AssetImage(Assets.resourceImagesMafdym),
        context,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 800),
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Positioned.fill(
                child: const Image(
              image: AssetImage(Assets.resourceImagesMafdym),
              fit: BoxFit.fill,
              height: double.infinity,
            )),
            Positioned(child: CustomShape()),
          ],
        ),
      ),
    );
  }
}
