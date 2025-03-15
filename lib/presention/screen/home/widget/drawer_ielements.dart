import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/core/utils/fontstyle.dart';
import 'package:portfolio/presention/screen/home/widget/Bottomes.dart';
import 'package:portfolio/presention/screen/home/widget/custom_appbar.dart';
import 'package:portfolio/presention/screen/home/widget/custom_septation.dart';
import 'package:portfolio/presention/screen/home/widget/option.dart';

class Drawerielements extends StatelessWidget {
  const Drawerielements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppbar(),
        CustomSeptation(),
        SizedBox(
          height: 10,
        ),
        Bottomes(),
        SizedBox(
          height: 25,
        ),
        Text(
          ' my name is Mafdy',
          style: Style.advenpro_25(),
        ),
        Text(
          'I’M A DEVELOPER',
          style: Style.montserrat_32(),
        ),
        SizedBox(
          height: 14,
        ),
        Image.asset(
          Assets.resourceImagesSeparatorWhite,
        ),
        SizedBox(
          height: 18,
        ),
        Options(is_vertical: false)
      ],
    );
  }
}
