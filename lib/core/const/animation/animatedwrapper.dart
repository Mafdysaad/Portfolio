import 'package:flutter/material.dart';

class AnimatedWrapper extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double scaleFactor;
  final void Function()? function;

  const AnimatedWrapper(
      {Key? key,
      required this.child,
      this.duration = const Duration(milliseconds: 200),
      this.scaleFactor = 1.2,
      this.function})
      : super(key: key);

  @override
  _AnimatedWrapperState createState() => _AnimatedWrapperState();
}

class _AnimatedWrapperState extends State<AnimatedWrapper> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (_dragupdate) => setState(() => scale = widget.scaleFactor),
      onPanEnd: (_) => setState(() => scale = 1.0),
      child: AnimatedContainer(
        duration: widget.duration,
        transform: Matrix4.identity()..scale(scale),
        child: GestureDetector(onTap: widget.function, child: widget.child),
      ),
    );
  }
}
