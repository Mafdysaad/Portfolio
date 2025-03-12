import 'package:flutter/material.dart';

class AnimatedWrapper extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double scaleFactor;

  const AnimatedWrapper({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.scaleFactor = 1.2,
  }) : super(key: key);

  @override
  _AnimatedWrapperState createState() => _AnimatedWrapperState();
}

class _AnimatedWrapperState extends State<AnimatedWrapper> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => scale = widget.scaleFactor),
      onExit: (_) => setState(() => scale = 1.0),
      child: AnimatedContainer(
        duration: widget.duration,
        transform: Matrix4.identity()..scale(scale),
        child: widget.child,
      ),
    );
  }
}
