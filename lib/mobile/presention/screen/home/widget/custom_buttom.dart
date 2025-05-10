import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  const CustomButtom({super.key, required this.title});

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
              style: Style.montserrat_14(context),
            ),
          ),
        ));
  }
}
