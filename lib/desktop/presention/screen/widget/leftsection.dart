import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Leftsection extends StatelessWidget {
  const Leftsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Hi, I am',
            style: Style.Raleway_40_regular(context),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            ' Mafdy Saad',
            style: Style.Raleway_80_regular(context),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Fultter Developer / UI Designer',
            style: Style.Raleway_25_regular(context)
                .copyWith(color: Color(0xff909090)),
          ),
        )
      ],
    );
  }
}
