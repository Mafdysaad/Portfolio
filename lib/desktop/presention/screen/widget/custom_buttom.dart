import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class CustomButtom extends StatefulWidget {
  const CustomButtom({super.key});

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  List<String> list = [' About me', ' Skills', 'Portfolio', 'CONTACT ME'];
  int currentindex = 3;
  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 20,
        children: List.generate(
            list.length,
            (index) => MouseRegion(
                  onHover: (event) => setState(() {
                    currentindex = index;
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: currentindex == index ? Colors.white : null),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(list[index],
                          style: Style.montserrat_17_bold(context).copyWith(
                              color: currentindex == index
                                  ? Colors.black
                                  : Colors.white,
                              letterSpacing: 1)),
                    ),
                  ),
                )));
  }
}
