import 'package:flutter/material.dart';

class Opations extends StatefulWidget {
  const Opations({super.key, required this.list, this.isVertical = false});
  final List<Widget> list;
  final bool isVertical;

  @override
  State<Opations> createState() => _TrycustominmationState();
}

class _TrycustominmationState extends State<Opations> {
  final GlobalKey itemKey = GlobalKey();
  double itemHeight = 0;
  double itemWidth = 0;
  int currentIndex = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initsize();
    });
  }

  void initsize() {
    final context = itemKey.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      setState(() {
        itemHeight = box.size.height;
        itemWidth = box.size.width;
      });
    }
  }

  void _currentIndex(DragUpdateDetails details) {
    int newIndex = 0;

    if (widget.isVertical) {
      newIndex = (details.localPosition.dx ~/ itemWidth)
          .clamp(0, widget.list.length - 1);
      print('is horsintal ===== width = $itemWidth');
    } else {
      newIndex = (details.localPosition.dy ~/ itemHeight)
          .clamp(0, widget.list.length - 1);
      print('its vertical |||||| hegth = $itemHeight');
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
              children: List.generate(widget.list.length, (index) {
                double scaleFactor = currentIndex == index ? 1.2 : 1;
                return Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    transform: Matrix4.identity()..scale(scaleFactor),
                    key:
                        index == 0 ? itemKey : null, // 🔑 المفتاح لأول عنصر فقط
                    child: widget.list[index],
                  ),
                );
              }),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.list.length, (index) {
                double scaleFactor = currentIndex == index ? 1.2 : 1;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.identity()..scale(scaleFactor),
                  key: index == 0 ? itemKey : null,
                  child: widget.list[index],
                );
              }),
            ),
    );
  }
}
