import 'package:flutter/material.dart';

class Buildpage extends StatelessWidget {
  final String? backgroundImage;
  final Color? backgroundColor;
  final Widget child;

  const Buildpage({
    Key? key,
    this.backgroundImage,
    this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
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
