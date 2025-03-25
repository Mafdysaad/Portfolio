import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.MobileLayout,
      required this.DesktopLayout,
      required this.TablietLayout});
  final WidgetBuilder MobileLayout, TablietLayout, DesktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.tablet) {
        return MobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desctop) {
        return TablietLayout(context);
      } else {
        return DesktopLayout(context);
      }
    });
  }
}
