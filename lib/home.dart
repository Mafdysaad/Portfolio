import 'package:flutter/material.dart';
import 'package:portfolio/adaptive_layout/adaptive_layout.dart';
import 'package:portfolio/desktop/presention/screen/desktop.dart';

import 'package:portfolio/mobile/presention/screen/home/mobile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdabtiveLayout(
        mobileLayout: (context) => Mobile(),
        tablietLayout: (context) => Desktop(),
        desktopLayout: (context) => Desktop());
  }
}
