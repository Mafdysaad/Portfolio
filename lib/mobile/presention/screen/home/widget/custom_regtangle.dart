import 'package:flutter/material.dart';

class CustomRegtangle extends StatelessWidget {
  final double width;
  final Widget child;
  const CustomRegtangle({super.key, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, 250),
      painter: CutRectanglePainter(),
      child: child,
    );
  }
}

class CutRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(150, 123, 124, 124)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * .4);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
