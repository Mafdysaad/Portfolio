import 'package:flutter/material.dart';

class Customshipe extends StatelessWidget {
  const Customshipe(
      {super.key,
      required this.child,
      required this.higth,
      required this.width});

  final Widget child;
  final double higth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CutRectanglePainter(),
      size: Size(width, higth),
      child: child,
    );
  }
}

class CutRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width, size.height); // bottom right
    path.lineTo(size.width * 0.4, size.height); // bottom left
    path.lineTo(size.width * 0.5, 0); // top middle
    path.lineTo(size.width, 0); // top right
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
