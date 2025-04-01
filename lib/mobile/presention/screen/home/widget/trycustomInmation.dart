import 'package:flutter/material.dart';

class Opations extends StatefulWidget {
  const Opations({super.key, required this.list, this.isVertical = false});
  final List<Widget> list;
  final bool isVertical;

  @override
  State<Opations> createState() => _TrycustominmationState();
}

class _TrycustominmationState extends State<Opations> {
  final GlobalKey columnkey = GlobalKey();
  double itemHeight = 0;
  double itemWidth = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initsize();
    });
  }

  void initsize() {
    columnkey.currentContext?.visitChildElements((element) {
      RenderBox childRenderBox = element.findRenderObject() as RenderBox;
      setState(() {
        itemHeight = childRenderBox.size.height;
        itemWidth = childRenderBox.size.width;
      });
    });
  }

  void _currentIndex(DragUpdateDetails details) {
    int newIndex = 0;

    if (widget.isVertical) {
      newIndex = (details.localPosition.dx ~/ itemWidth)
          .clamp(0, widget.list.length - 1);
    } else {
      newIndex = (details.localPosition.dy ~/ itemHeight)
          .clamp(0, widget.list.length - 1);
    }

    if (newIndex != currentIndex) {
      setState(() {
        currentIndex = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _currentIndex,
      child: widget.isVertical
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              key: columnkey,
              children: List.generate(widget.list.length, (index) {
                double scaleFactor = currentIndex == index ? 1.2 : 1;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.identity()..scale(scaleFactor),
                  child: widget.list[index],
                );
              }),
            )
          : Column(
              key: columnkey,
              children: List.generate(widget.list.length, (index) {
                double scaleFactor = currentIndex == index ? 1.2 : 1;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.identity()..scale(scaleFactor),
                  child: widget.list[index],
                );
              }),
            ),
    );
  }
}
