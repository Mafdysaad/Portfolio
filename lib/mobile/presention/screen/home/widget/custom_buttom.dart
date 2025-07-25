import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final TextStyle style;

  const CustomButtom({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          overlayColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 7, color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Text(
              title,
              style: style,
            ),
          ),
        ));
  }
}
