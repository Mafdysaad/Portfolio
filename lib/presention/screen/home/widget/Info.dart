import 'package:flutter/material.dart';

import 'package:portfolio/core/utils/fontstyle.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> info = [
      'ci/cdccccc',
      'ci/cdcccc',
      'Front-end Developer / UI Designer'
    ];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: info
            .map((item) => Text(
                  item,
                  style: item == 'Mafdy Saad'
                      ? Style.soyombo20_bold()
                      : Style.soyombo18_sembold(),
                ))
            .toList());
  }
}
