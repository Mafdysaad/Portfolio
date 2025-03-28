import 'package:flutter/material.dart';

import 'package:portfolio/home.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_regtangle.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
