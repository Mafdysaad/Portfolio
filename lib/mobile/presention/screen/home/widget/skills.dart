import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_logo.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Skills extends StatelessWidget {
  const Skills({super.key, required this.isdesktop});
  final bool isdesktop;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xffd7d7d7),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: CustomButtom(
              title: 'SKILLs',
              style: isdesktop
                  ? Style.montserrat_30_bold(context)
                  : Style.montserrat_14(context),
            ),
          ),
          isdesktop
              ? Row(
                  children: [
                    Text(
                      'USING NOW:',
                      textAlign: TextAlign.start,
                      style: Style.montserrat_30_bold(context),
                    ),
                  ],
                )
              : Text(
                  'USING NOW:',
                  textAlign: TextAlign.start,
                  style: Style.montserrat_30_bold(context),
                ),
          SizedBox(
            height: 30,
          ),
          isdesktop
              ? Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    CustomLogo(
                        assetsname: Assets.resourceImagesFlutter,
                        title: 'FLUTTER'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesDart, title: 'Dart'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesRestApi,
                        title: 'RESTFUL API'),
                  ],
                )
              : Column(
                  children: [
                    CustomLogo(
                        assetsname: Assets.resourceImagesFlutter,
                        title: 'FLUTTER'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesDart, title: 'Dart'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesRestApi,
                        title: 'RESTFUL API'),
                  ],
                ),
          isdesktop
              ? Row(
                  children: [
                    Text(
                      'Tools',
                      textAlign: TextAlign.start,
                      style: Style.montserrat_30_bold(context),
                    ),
                    Spacer()
                  ],
                )
              : Text(
                  'Tools',
                  textAlign: TextAlign.start,
                  style: Style.montserrat_30_bold(context),
                ),
          SizedBox(
            height: 30,
          ),
          isdesktop
              ? Wrap(
                  spacing: 20,
                  runSpacing: 30,
                  children: [
                    CustomLogo(
                        assetsname: Assets.resourceImagesFirebase,
                        title: 'FIREBASE'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesVector,
                        title: 'MYSQL'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesAndrid,
                        title: 'ANDRIOD'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesKotlin,
                        title: 'KOTLIN'),
                  ],
                )
              : Column(
                  children: [
                    CustomLogo(
                        assetsname: Assets.resourceImagesFirebase,
                        title: 'FIREBASE'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesVector,
                        title: 'MYSQL'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesAndrid,
                        title: 'ANDRIOD'),
                    CustomLogo(
                        assetsname: Assets.resourceImagesKotlin,
                        title: 'KOTLIN'),
                  ],
                )
        ],
      ),
    );
  }
}
