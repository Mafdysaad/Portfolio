import 'package:flutter/material.dart';

class Rigthsection extends StatelessWidget {
  const Rigthsection({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CutRectanglePainter(),
      child: child,
    );
  }
}

class CutRectanglePainter extends CustomPainter {
  var context;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    path.lineTo(MediaQuery.of(context).size.width * .5,
        MediaQuery.of(context).size.height);
    path.lineTo(MediaQuery.of(context).size.width * .6, 0);
    path.lineTo(MediaQuery.of(context).size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CutRectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width * .4, size.height);
    path.lineTo(size.width * .5, 0);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
