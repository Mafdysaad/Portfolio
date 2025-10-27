import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/utils/fontstyle.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class Leftsection extends StatelessWidget {
  const Leftsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      Assets.resourceImagesGithup,
      Assets.resourceImagesMailu,
      Assets.resourceImagesLinkedinu
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'HI, I am   ',
            style: Style.Raleway_40_regular(context),
          ),
        ),
        const SizedBox(height: 18),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            ' Mafdy Saad',
            textAlign: TextAlign.start,
            style: Style.Raleway_80_bold(context),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            textAlign: TextAlign.start,
            'Flutter Developer / UI Designer',
            style: Style.Raleway_25_extrabold(context).copyWith(
              color: const Color(0xff909090),
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: List.generate(list.length, (index) {
            return Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: InkWell(
                  onTap: () => index == 0
                      ? launchUrl(Uri.parse('https://github.com/Mafdysaad'))
                      : index == 1
                          ? launchUrl(Uri(
                              scheme: 'mailto',
                              path: 'mafdysaad366@gmail.com',
                              query: '&body=Hi Mafdy,'))
                          : launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/mafdy-saad-a9b149199')),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                    ),
                    child: Padding(
                      padding:
                          MediaQuery.of(context).size.width < SizeConfig.desctop
                              ? EdgeInsets.all(1)
                              : EdgeInsetsGeometry.all(4),
                      child: Center(
                        child: SvgPicture.asset(
                          fit: BoxFit.contain,
                          list[index],
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
