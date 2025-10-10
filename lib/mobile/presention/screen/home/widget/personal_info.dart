import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/trycustomInmation.dart';

import 'package:portfolio/utils/fontstyle.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    @override
    List<String> options = [
      Assets.resourceImagesMailu,
      Assets.resourceImagesGithup,
      Assets.resourceImagesLinkedinu
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          ' my name is Mafdy',
          style: Style.advenpro_25(context),
        ),
        Text(
          'I’M A DEVELOPER',
          style: Style.montserrat_32(context),
        ),
        SizedBox(
          height: 14,
        ),
        SvgPicture.asset(
          Assets.resourceImagesSeparatorWhite,
        ),
        SizedBox(
          height: 18,
        ),
        RepaintBoundary(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: Opations(
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
                          options[index]))),
              isVertical: true,
            ),
          ),
        )
      ],
    );
  }
}
