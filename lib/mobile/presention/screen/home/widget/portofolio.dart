import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/Data/modle/projects.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/assets.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({super.key, this.isVertical = false});
  final bool isVertical;

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  double height = 0;
  double width = 0;
  int currentIndex = -1;

  final List<Projects> list = [
    Projects(
      Name: 'Bookly App',
      image: Assets.resourceImagesBookelyapp,
      url: 'https://github.com/Mafdysaad/BooklyApp.git',
      discraption:
          'A  simple book preview application with smooth navigation and book details.Integrated with url_launcher to open book links in the browser.',
    ),
    Projects(
      Name: 'Chat App',
      image: Assets.resourceImagesChatapp,
      url: 'https://github.com/Mafdysaad/chat_app.git',
      discraption:
          'A real-time messaging app built using Firebase Realtime Database.Supports sending/receiving messages instantly in a chatroom layout',
    ),
    Projects(
      Name: 'Healthcare Dashboards (Responsive Dashboard)',
      image: Assets.resourceImagesIbmapp,
      url: 'https://github.com/Mafdysaad/health_care_dashboards.git',
      discraption:
          'A  fully responsive healthcare admin dashboard UI designed for medical data visualization.Supports desktop, tablet, and mobile layouts with a modern, clean design.Built with Cubit for state management and dynamic responsiveness.',
    ),
    Projects(
      Name: 'WeatherApp',
      image: Assets.resourceImagesWaterapp,
      url: 'https://github.com/Mafdysaad/Weather_app.git',
      discraption:
          'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        list.length,
        (index) {
          final project = list[index];
          return InkWell(
            onDoubleTap: () {
              launchUrl(Uri.parse(list[index].url));
            },
            onTap: () {
              if (currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: AnimatedContainer(
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
          );
        },
      ),
    );
  }
}
