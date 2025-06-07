import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/const/animation/animatedwrapper.dart';

import '../../../../../core/utils/assets.dart';

class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      toolbarHeight: 120,
      backgroundColor: Color(0xff0c0b0b),
      leading: AnimatedWrapper(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 10),
          child: Image.asset("assets/images/flutterlogo.png"),
        ),
        function: () => Scaffold.of(context).openEndDrawer(),
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 30, top: 10),
            child: AnimatedWrapper(
              child: SvgPicture.asset(Assets.resourceImagesDrawer),
              function: () => Scaffold.of(context).openDrawer(),
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
