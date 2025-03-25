import 'package:flutter/material.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/Bottomes.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/custom_appbar.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_septation.dart';

import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppbar(),
        CustomSeparation(),
        SizedBox(
          height: 10,
        ),
        CustomBottomes(),
        SizedBox(
          height: 25,
        ),
        PersonalInfo()
      ],
    );
  }
}
