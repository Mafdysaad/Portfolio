import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/Data/modle/projects.dart';
import 'package:portfolio/core/utils/assets.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({super.key, this.isVertical = false});
  final bool isVertical;

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  double height = 0;
  double width = 0;
  final GlobalKey globalKey = GlobalKey();
  int currentIndex = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => initSize());
  }

  void initSize() {
    final context = globalKey.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      setState(() {
        height = box.size.height;
        width = box.size.width;
      });
    }
  }

  final List<Projects> list = List.generate(
    4,
    (i) => Projects(
      Name: 'WeatherApp',
      image: Assets.resourceImagesWaterapp,
      url: 'https://github.com/Mafdysaad/Weather_app.git',
      discraption:
          'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.',
    ),
  );

  void _currentIndex(DragUpdateDetails details) {
    if (height == 0 || width == 0) return;

    int newIndex = widget.isVertical
        ? (details.localPosition.dx ~/ width).clamp(0, list.length - 1)
        : (details.localPosition.dy ~/ height).clamp(0, list.length - 1);

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
        list.length,
        (index) {
          final project = list[index];
          return GestureDetector(
            onPanUpdate: _currentIndex,
            child: InkWell(
              onTap: () {
                // TODO: فتح رابط المشروع مثلاً
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: AnimatedContainer(
                  key: index == 0 ? globalKey : null,
                  duration: 300.ms,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      if (index == currentIndex)
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 16,
                          offset: const Offset(0, 6),
                        )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(project.image),
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Center(
                        child: Icon(Icons.folder_open,
                            size: 60, color: Colors.grey),
                      ),
                      if (index == currentIndex)
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.75),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                project.Name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                project.discraption,
                                style: const TextStyle(color: Colors.white70),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ).animate().fadeIn().slideY(begin: 0.2),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
