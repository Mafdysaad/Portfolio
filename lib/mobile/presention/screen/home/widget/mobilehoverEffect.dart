import 'package:flutter/material.dart';
import 'package:portfolio/core/const/scrollcontroller.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Mobilehovereffect extends StatefulWidget {
  const Mobilehovereffect({super.key});

  @override
  State<Mobilehovereffect> createState() => _TrycustominmationState();
}

class _TrycustominmationState extends State<Mobilehovereffect> {
  final GlobalKey itemKey = GlobalKey();
  List<String> bottoms = ['About me', 'Skills', 'Portfolio', 'CONTACT ME'];

  int currentIndex = -1;
  int pageNumber = -1;

  void _currentIndex(DragUpdateDetails details) {
    int newIndex = 0;
    newIndex = (details.localPosition.dy ~/ 57).clamp(0, bottoms.length - 1);

    if (newIndex != currentIndex) {
      setState(() {
        currentIndex = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            bottoms.length,
            (index) => InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    setState(() {
                      pageNumber = index + 2;
                      currentIndex = index;
                    });

                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ScrollService().scaffoldKey.currentState?.openEndDrawer();
                      Future.delayed(Duration(milliseconds: 300), () {
                        ScrollService().scrollToSection(pageNumber);
                      });
                    });
                    print('current index =$currentIndex');
                  },
                  child: GestureDetector(
                    onPanUpdate: _currentIndex,
                    child: Container(
                      alignment: Alignment.center,
                      height: 57,
                      color: currentIndex == index ? Colors.white : null,
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.center,
                        bottoms[index],
                        style: currentIndex == index
                            ? Style.montserrat_12(context).copyWith(
                                color: Colors.black,
                              )
                            : Style.montserrat_12(context),
                      ),
                    ),
                  ),
                )));
  }
}
