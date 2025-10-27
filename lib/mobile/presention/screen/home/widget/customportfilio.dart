import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_buttom.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/portofolio.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Customportfilio extends StatefulWidget {
  const Customportfilio({super.key, required this.isdesktop});
  final bool isdesktop;

  @override
  State<Customportfilio> createState() => _CustomportfilioState();
}

class _CustomportfilioState extends State<Customportfilio> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Assets.resourceImagesPortfoliobackground,
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: CustomButtom(
                title: "Portofilio",
                style: widget.isdesktop
                    ? Style.montserrat_30_bold(context)
                    : Style.montserrat_14(context),
              ),
            )),
        Container(
          color: Color.fromARGB(255, 26, 26, 26),
          child: Column(
            children: [
              Portofolio(
                isdisktop: widget.isdesktop,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'And many more to come  !!!',
                  style: Style.montserrat_17_bold(context)
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
