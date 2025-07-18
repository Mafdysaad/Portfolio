import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';

import 'package:portfolio/utils/fontstyle.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/assets.dart';

class Lastsection extends StatelessWidget {
  const Lastsection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      Assets.resourceImagesCustomfacebook,
      Assets.resourceImagesCustomlikedin,
      Assets.resourceImagesCustommail
    ];
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        InkWell(
            onTap: () {
              ScrollService.scrollToSection(1);
            },
            child: SvgPicture.asset(Assets.resourceImagesArrow)),
        SizedBox(
          height: 10,
        ),
        Text(
          'BACK TO TOP',
          style:
              Style.montserrat_17_bold(context).copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              options.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: InkWell(
                        onTap: () {
                          index == 0
                              ? launchUrl(Uri.parse(
                                  'https://www.facebook.com/mafdy.saad.7'))
                              : index == 1
                                  ? launchUrl(Uri.parse(
                                      'https://www.linkedin.com/in/mafdy-saad-a9b149199'))
                                  : launchUrl(Uri(
                                      scheme: 'mailto',
                                      path: 'mafdysaad366@gmail.com',
                                      query: '&body=Hi Mafdy,'));
                        },
                        child: SvgPicture.asset(
                          options[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
        ),
        TextButton(
            onPressed: () {
              launchUrl(
                  Uri.parse(
                      'https://github.com/Mafdysaad/Portfolio/raw/main/Mafdysaad\'s (Flutter Developer).pdf'),
                  mode: LaunchMode.externalApplication);
            },
            child: Text(
              'download My Cv .... ',
              textAlign: TextAlign.left,
              style: Style.montserrat_17_bold(context)
                  .copyWith(color: Colors.white),
            ))
      ],
    );
  }
}
