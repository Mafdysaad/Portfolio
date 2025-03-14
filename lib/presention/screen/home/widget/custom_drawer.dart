import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/core/utils/fontstyle.dart';
import 'package:portfolio/presention/screen/home/widget/Bottomes.dart';
import 'package:portfolio/presention/screen/home/widget/option.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image(
                image: AssetImage(Assets.resourceImagesBackground),
                fit: BoxFit.fill)),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color.fromARGB(2, 52, 51, 51)],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.black,
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset(Assets.resourceImagesCustomDrawer),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: InkWell(
                              onTap: () => Scaffold.of(context).closeDrawer(),
                              child:
                                  SvgPicture.asset(Assets.resourceImagesExit)),
                        )
                      ],
                    )),
                Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Bottomes(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  ' my name is Mafdy',
                  style: Style.advenpro_25(),
                ),
                Text(
                  'I’M A DEVELOPER',
                  style: Style.montserrat_32(),
                ),
                SizedBox(
                  height: 14,
                ),
                Image.asset(
                  Assets.resourceImagesSeparatorWhite,
                ),
                SizedBox(
                  height: 18,
                ),
                Options(is_vertical: false)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
