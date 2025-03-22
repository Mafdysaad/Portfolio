import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/core/utils/fontstyle.dart';
import 'package:portfolio/presention/screen/home/widget/bottomes.dart';
import 'package:portfolio/presention/screen/home/widget/custom_appbar.dart';
import 'package:portfolio/presention/screen/home/widget/custom_septation.dart';
import 'package:portfolio/presention/screen/home/widget/option.dart';
import 'package:portfolio/presention/screen/home/widget/personal_info.dart';

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
        Bottomes(),
        SizedBox(
          height: 25,
        ),
        PersonalInfo()
      ],
    );
  }
}
