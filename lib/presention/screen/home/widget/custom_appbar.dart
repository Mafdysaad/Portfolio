import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: SvgPicture.asset(Assets.resourceImagesExit)),
            )
          ],
        ));
  }
}
