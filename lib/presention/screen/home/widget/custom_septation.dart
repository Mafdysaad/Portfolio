import 'package:flutter/material.dart';

class CustomSeptation extends StatelessWidget {
  const CustomSeptation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
