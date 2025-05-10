import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/utils/fontstyle.dart';

class CustomLogo extends StatelessWidget {
  final String Assetsname;
  final String title;

  const CustomLogo({super.key, required this.Assetsname, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .3,
            child: SvgPicture.asset(
              Assetsname,
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
