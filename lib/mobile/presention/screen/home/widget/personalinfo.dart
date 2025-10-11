import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/buildpage.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';

import '../../../../../core/utils/assets.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key, required this.opacity});
  final double opacity;

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  void initstate() {
    super.initState();
    precacheImage(const AssetImage(Assets.resourceImagesBackground), context);
  }

  @override
  Widget build(BuildContext context) {
    return Buildpage(
      backgroundImage: Assets.resourceImagesBackground,
      child: AnimatedOpacity(
        opacity: widget.opacity,
        duration: Duration(milliseconds: 500),
        child: PersonalInfo(),
      ),
    );
  }
}
