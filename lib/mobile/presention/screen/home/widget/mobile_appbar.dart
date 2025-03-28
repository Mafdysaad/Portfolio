import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/const/animation/animatedwrapper.dart';
import 'package:portfolio/utils/assets.dart';

class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppbar({super.key, required this.scaffoldkey});
  final GlobalKey<ScaffoldState> scaffoldkey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      toolbarHeight: 100,
      backgroundColor: Color(0xff0c0b0b),
      leading: AnimatedWrapper(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset(Assets.resourceImagesCustomDrawer),
        ),
        function: () => scaffoldkey.currentState?.openEndDrawer(),
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 30),
            child: AnimatedWrapper(
              child: SvgPicture.asset(Assets.resourceImagesDrawer),
              function: () => scaffoldkey.currentState?.openDrawer(),
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
