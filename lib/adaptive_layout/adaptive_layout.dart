import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tablietLayout});
  final WidgetBuilder mobileLayout, tablietLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desctop) {
        return tablietLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
