import 'package:flutter/material.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/introdection.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/personal_info.dart';
import 'package:portfolio/utils/fontstyle.dart';

class CustomEnddrawer extends StatefulWidget {
  const CustomEnddrawer({
    super.key,
  });

  @override
  State<CustomEnddrawer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomEnddrawer> {
  double _opacity = 0.0;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Positioned.fill(
                child: Image(
                    image: AssetImage(Assets.resourceImagesBackground),
                    fit: BoxFit.fill)),
            Positioned.fill(
              child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 500),
                  child: PersonalInfo()),
            )
          ]),
        ),
      ),
      Introdection(),
    ]);
  }
}
