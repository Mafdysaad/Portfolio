import 'package:flutter/material.dart';

class Buildpage extends StatelessWidget {
  final String? backgroundImage;
  final Color? backgroundColor;
  final Widget child;

  const Buildpage({
    super.key,
    this.backgroundImage,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 800,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        image: backgroundImage != null
            ? DecorationImage(
                image: AssetImage(backgroundImage!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: child,
    );
  }
}
