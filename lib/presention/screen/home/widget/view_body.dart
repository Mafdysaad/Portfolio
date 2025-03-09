import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/core/utils/fontstyle.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(Assets.resourceImagesFinal))),
        ),
        Positioned(
            bottom: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset(
                        color: const Color.fromARGB(255, 123, 124, 124),
                        Assets.resourceImagesRectangle)))),
        Positioned(
            bottom: 40,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        'Hi, I am',
                        style: Fontstyle.soyombo18_sembold(),
                      ),
                      Text('Mafdy Saad', style: Fontstyle.soyombo20_bold()),
                      Text('Front-end Developer / UI Designer',
                          style: Fontstyle.soyombo18_sembold()),
                    ],
                  ),
                  Column(
                    spacing: 29,
                    children: [
                      Image.asset(Assets.resourceImagesMail),
                      Image.asset(Assets.resourceImagesGethup),
                      Image.asset(Assets.resourceImagesLinkedin),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
