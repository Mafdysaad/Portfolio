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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Text(
                      'IT BERRIES',
                      style: Style.montserrat_30_bold(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Paragraph(
                      text:
                          'Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est. Morbi commodo, eros in dignissim tempus, lacus odio rutrum augue, in semper sem magna quis tellus. Etiam enim erat, suscipit eu semper a, dictum sit amet elit. Nunc egestas nisi eget enim gravida facilisis. Pellentesque laoreet varius turpis vel pharetra. Ut ante justo, consequat vitae elementum tempor, accumsan nec eros. ',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Edgbuttom(
                    title: 'READ MORE',
                    color: Colors.white,
                    isdisktop: true,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
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
