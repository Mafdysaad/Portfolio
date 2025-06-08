import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/portofolio.dart';

class Customportfilio extends StatelessWidget {
  const Customportfilio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Assets.resourceImagesPortfoliobackground,
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: CustomButtom(
                title: "Portofilio",
              ),
            )),
        Container(
          color: Color.fromARGB(255, 26, 26, 26),
          child: Portofolio(),
        ),
      ],
    );
  }
}
