import 'package:flutter/material.dart';

class HoverTouchEffect extends StatefulWidget {
  final Widget child;
  final double scale;
  final Duration duration;

  const HoverTouchEffect({
    super.key,
    required this.child,
    this.scale = 1.2,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  State<HoverTouchEffect> createState() => _HoverTouchEffectState();
}

class _HoverTouchEffectState extends State<HoverTouchEffect> {
  bool _hovering = false;

  void _setHovering(bool value) {
    if (_hovering != value) {
      setState(() {
        _hovering = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: GestureDetector(
        onTapDown: (_) => _setHovering(true),
        onTapUp: (_) => _setHovering(false),
        onTapCancel: () => _setHovering(false),
        child: AnimatedScale(
          scale: _hovering ? widget.scale : 1.0,
          duration: widget.duration,
          child: widget.child,
        ),
      ),
    );
  }
}
