import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:portfolio/utils/fontstyle.dart';

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
        SvgPicture.asset(Assets.resourceImagesArrow),
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
                      child: SvgPicture.asset(
                        options[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
        ),
        TextButton(
            onPressed: () {},
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
