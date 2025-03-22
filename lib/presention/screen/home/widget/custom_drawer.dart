import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.items});
  final Widget items;

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
              child: items),
        ),
      ],
    );
  }
}
