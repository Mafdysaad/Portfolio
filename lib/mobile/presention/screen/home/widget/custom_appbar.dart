import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 5, top: 5),
              child: InkWell(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Image.asset(Assets.resourceImagesFlutterlogo)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: InkWell(
                  onTap: () => Scaffold.of(context).closeDrawer(),
                  child: SvgPicture.asset(Assets.resourceImagesExit)),
            )
          ],
        ));
  }
}
