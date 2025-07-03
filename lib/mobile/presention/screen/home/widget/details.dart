import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/Info.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/trycustomInmation.dart';

import 'package:portfolio/utils/inheritedwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      Assets.resourceImagesMailu,
      Assets.resourceImagesGithup,
      Assets.resourceImagesLinkedinu
    ];
    return AnimatedBuilder(
      animation: Animationprovider.of(context)!.animation_2,
      builder: (context, child) => SlideTransition(
        position: Animationprovider.of(context)!.animation_2,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 25,
                ),
                Info(),
                Spacer(),
                Opations(
                  list: List.generate(
                      options.length,
                      (index) => InkWell(
                          onTap: () {
                            index == 1
                                ? launchUrl(
                                    Uri.parse('https://github.com/Mafdysaad'))
                                : index == 2
                                    ? launchUrl(Uri.parse(
                                        'https://www.linkedin.com/in/mafdy-saad-a9b149199'))
                                    : launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'mafdysaad366@gmail.com',
                                        query: '&body=Hi Mafdy,'));
                          },
                          child: SvgPicture.asset(
                              width: MediaQuery.of(context).size.width * .04,
                              height: MediaQuery.of(context).size.height * .04,
                              fit: BoxFit.contain,
                              options[index]))),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
