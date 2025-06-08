import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_logo.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'USING NOW:',
          style: Style.montserrat_30_bold(context),
        ),
        SizedBox(
          height: 30,
        ),
        CustomLogo(Assetsname: Assets.resourceImagesFlutter, title: 'FLUTTER'),
        CustomLogo(Assetsname: Assets.resourceImagesDart, title: 'Dart'),
        CustomLogo(
            Assetsname: Assets.resourceImagesRestApi, title: 'RESTFUL API'),
        Text(
          'TOOLS :',
          style: Style.montserrat_30_bold(context),
        ),
        SizedBox(
          height: 30,
        ),
        CustomLogo(
            Assetsname: Assets.resourceImagesFirebase, title: 'FIREBASE'),
        CustomLogo(Assetsname: Assets.resourceImagesVector, title: 'MYSQL'),
        CustomLogo(Assetsname: Assets.resourceImagesAndrid, title: 'ANDRIOD'),
        CustomLogo(Assetsname: Assets.resourceImagesKotlin, title: 'KOTLIN'),
      ],
    );
  }
}
