import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/assets.dart';

import 'package:portfolio/presention/screen/home/widget/view_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0c0b0b),
          titleSpacing: 42,
          title: Image.asset(Assets.resourceImagesCustomDrawer),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 24),
                child: SvgPicture.asset(Assets.resourceImagesDrawer))
          ],
          leadingWidth: 200,
        ),
        body: ViewBody());
  }
}
