import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:portfolio/utils/fontstyle.dart';

class CustomLogo extends StatelessWidget {
  final String assetsname;
  final String title;

  const CustomLogo({super.key, required this.assetsname, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            width: 180,
            height: 200,
            child: SvgPicture.asset(
              assetsname,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            title,
            style: Style.montserrat_24_regular(context),
          )
        ],
      ),
    );
  }
}
