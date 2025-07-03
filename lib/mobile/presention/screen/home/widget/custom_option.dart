import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

class CustomOption extends StatefulWidget {
  const CustomOption({super.key, required this.tween});
  final Tween<double> tween;
  @override
  State<CustomOption> createState() => _CustomOptionState();
}

class _CustomOptionState extends State<CustomOption> {
  @override
  Widget build(BuildContext context) {
    double size = 60;

    return GestureDetector(
      onTapDown: (_) => setState(() {
        size = 200;
      }),
      onTapUp: (_) => setState(() {
        size = 60;
      }),
      onTapCancel: () => setState(() {
        size = 60;
      }),
      child: TweenAnimationBuilder(
        duration: Duration(microseconds: 500),
        tween: Tween<double>(
          begin: 50,
          end: size,
        ),
        builder: (context, size, child) => Image.asset(
          Assets.resourceImagesCustomDrawer,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
