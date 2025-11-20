import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/edgbuttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/paragraph.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Footersection extends StatelessWidget {
  const Footersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Flutter Developer',
                      style: Style.montserrat_30_bold(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Paragraph(
                    text:
                        'Creative and detail-oriented Flutter Developer with a strong focus on building high-performance, responsive applications for mobile and web. Experienced in Firebase, RESTful APIs, clean architecture, and modern UI/UX design. Passionate about delivering pixel-perfect solutions and writing scalable, maintainable code.',
                    color: Colors.white,
                    textalign: TextAlign.start,
                  ),
                  Edgbuttom(
                    title: 'READ MORE',
                    color: Colors.white,
                    isdisktop: true,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Flexible(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.black,
                Colors.white.withOpacity(0.1),
                Colors.white.withOpacity(0.0),
              ],
            )),
            child: SvgPicture.asset(Assets.resourceImagesItfordesktop),
          )),
        ],
      ),
    );
  }
}
