import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';

import '../../../../../core/utils/assets.dart';

class Personalinfo extends StatelessWidget {
  const Personalinfo({super.key, required this.opacity});
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Buildpage(
      backgroundImage: Assets.resourceImagesBackground,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: Duration(milliseconds: 500),
        child: PersonalInfo(),
      ),
    );
  }
}
