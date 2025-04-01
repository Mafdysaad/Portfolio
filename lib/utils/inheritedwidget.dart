import 'package:flutter/material.dart';

class Animationprovider extends InheritedWidget {
  const Animationprovider({
    Key? key,
    required this.animationController,
    required this.animation_1,
    required this.animation_2,
    required Widget child,
  }) : super(key: key, child: child);
  final AnimationController animationController;
  final Animation<Offset> animation_1;
  final Animation<Offset> animation_2;
  static Animationprovider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Animationprovider>();
  }

  @override
  bool updateShouldNotify(Animationprovider oldWidget) {
    return animationController != oldWidget.animationController ||
        animation_1 != oldWidget.animation_1 ||
        animation_2 != oldWidget.animation_2;
  }
}
