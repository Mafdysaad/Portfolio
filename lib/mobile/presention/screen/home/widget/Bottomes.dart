import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';
import 'package:portfolio/core/function/navgatdrawer.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/aboutme.dart';
import 'package:portfolio/mobile/presention/screen/home/widget/custom_enddrawer.dart';

import 'package:portfolio/utils/fontstyle.dart';

class CustomBottomes extends StatefulWidget {
  const CustomBottomes({super.key});

  @override
  State<CustomBottomes> createState() => _CustomBottomesState();
}

class _CustomBottomesState extends State<CustomBottomes> {
  final List<bool> _isHovered = List.generate(5, (index) => false);
  final List<bool> _isClicked = List.generate(5, (index) => false);
  List<String> bottoms = ['About me', 'Skills', 'Portfolio', 'CONTACT ME'];
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    return Column(
        children: List.generate(
            bottoms.length,
            (index) => GestureDetector(
                  onPanUpdate: (_) => setState(() {
                    _isHovered[index] = true;
                  }),
                  onPanDown: (event) => setState(() {
                    _isHovered[index] = false;
                  }),
                  onPanEnd: (_) => setState(() {
                    _isHovered[index] = false;
                  }),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      setState(() {
                        _isClicked[index] == true ? false : true;
                        currentindex = index + 2;
                      });

                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScrollService()
                            .scaffoldKey
                            .currentState
                            ?.openEndDrawer();
                        Future.delayed(Duration(milliseconds: 300), () {
                          ScrollService().scrollToSection(currentindex);
                        });
                      });
                      print('current index =$currentindex');
                      print('index =$index');
                    },
                    child: Container(
                      height: 57,
                      color: _isHovered[index] ? Colors.white : null,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          bottoms[index],
                          style: _isClicked[index] || _isHovered[index]
                              ? Style.montserrat_12(context).copyWith(
                                  color: Colors.black,
                                )
                              : Style.montserrat_12(context),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
