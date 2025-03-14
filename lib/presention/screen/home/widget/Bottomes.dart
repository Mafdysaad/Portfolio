import 'package:flutter/material.dart';
import 'package:portfolio/core/const/animation/animatedwrapper.dart';
import 'package:portfolio/core/utils/fontstyle.dart';

class Bottomes extends StatefulWidget {
  const Bottomes({super.key});

  @override
  State<Bottomes> createState() => _BottomesState();
}

class _BottomesState extends State<Bottomes> {
  final List<bool> _isHovered = List.generate(5, (index) => false);
  final List<bool> _isClicked = List.generate(5, (index) => false);
  List<String> bottoms = ['About me', 'Skills', 'Portfolio', 'CONTACT ME'];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            bottoms.length,
            (index) => MouseRegion(
                  onEnter: (event) => setState(() {
                    _isHovered[index] = true;
                  }),
                  onExit: (event) => setState(() {
                    _isHovered[index] = false;
                  }),
                  child: InkWell(
                    onTap: () => setState(() {
                      _isClicked[index] == true ? false : true;
                    }),
                    child: Container(
                      height: 57,
                      color: _isHovered[index] ? Colors.white : null,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          bottoms[index],
                          style: _isClicked[index] || _isHovered[index]
                              ? Style.montserrat_12().copyWith(
                                  color: Colors.black,
                                )
                              : Style.montserrat_12(),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
