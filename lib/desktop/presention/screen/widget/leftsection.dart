import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Leftsection extends StatelessWidget {
  const Leftsection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      Assets.resourceImagesGithupu,
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
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    list[index],
                    color: Colors.black,
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
