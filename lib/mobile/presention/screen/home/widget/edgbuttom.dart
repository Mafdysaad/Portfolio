import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Edgbuttom extends StatelessWidget {
  const Edgbuttom(
      {super.key,
      required this.title,
      required this.color,
      this.ontap,
      this.isdisktop = false});
  final String title;
  final Color color;
  final bool isdisktop;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: SizedBox(
            child: Row(
          mainAxisAlignment:
              isdisktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Container(
              width: 2,
              height: 30,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                title,
                style: Style.montserrat_17_bold(context)
                    .copyWith(color: color, letterSpacing: 3),
              ),
            ),
            Container(
              width: 2,
              height: 30,
              color: color,
            ),
          ],
        )),
      ),
    );
  }
}
