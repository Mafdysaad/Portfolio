import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/Data/modle/projects.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/assets.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({super.key, required this.isdisktop});
  final bool isdisktop;

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  double height = 0;
  double width = 0;
  int currentIndex = -1;

  final List<Projects> list = [
    Projects(
      name: 'Berry Cart ',
      image: Assets.resourceImagesBookelyapp,
      url: 'https://github.com/Mafdysaad/BooklyApp.git',
      discraption:
          'An online shopping app where users can browse products, purchase with secure online payment, and track their orders in real time',
    ),
    Projects(
      name: ' Echo Chat',
      image: Assets.resourceImagesChatapp,
      url: 'https://github.com/Mafdysaad/chat_app.git',
      discraption:
          'EchoChat is a real-time messaging app that allows users to chat instantly, share voice messages, and exchange images with ease. It provides a smooth and interactive communication experience.',
    ),
    Projects(
      name: 'Fit Index',
      image: Assets.resourceImagesIbmapp,
      url: 'https://github.com/Mafdysaad/health_care_dashboards.git',
      discraption:
          'Fit Index is a health app that calculates your Body Mass Index (BMI) based on height and weight. It helps users track their fitness level and understand whether they are underweight, normal, overweight, or obese.',
    ),
    Projects(
      name: 'WeatherApp',
      image: Assets.resourceImagesWaterapp,
      url: 'https://github.com/Mafdysaad/Weather_app.git',
      discraption:
          'A simple and responsive weather app that shows real-time weather data based on the user’s location using Google API. Managed app states using Cubit for clean and maintainable code',
    ),
    Projects(
      name: 'Personal Portfolio Website ',
      image: Assets.resourceImagesPortfolioproject,
      url: 'https://github.com/Mafdysaad/Portfolio.git',
      discraption:
          'A fully responsive portfolio website built from scratch using Flutter Web. It showcases my projects, skills, and experience with a clean UI/UX design ',
    ),
    Projects(
      name: 'X-YouTube ',
      image: Assets.resourceImagesXYoutube,
      url: 'https://github.com/Mafdysaad/X_youtube.git',
      discraption:
          ' A Flutter-based mobile app that fetches and plays YouTube videos using APIs, showcasing skills in Flutter development, API integration, and state management.',
    )
  ];
  void initstate() {
    super.initState();
    void precache() async {
      for (var i = 0; i < list.length; i++) {
        await precacheImage(AssetImage(list[i].image), context);
      }
    }

    precache();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 6 / 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: widget.isdisktop ? 2 : 1,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final project = list[index];
        return Padding(
          padding: widget.isdisktop
              ? const EdgeInsets.only(right: 10, left: 10, top: 10)
              : EdgeInsetsGeometry.only(top: 20),
          child: InkWell(
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
            child: AnimatedContainer(
              duration: 300.ms,
              //  width: double.infinity,

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
                            project.name,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Expanded(
                            child: Text(
                              project.discraption,
                              style: const TextStyle(color: Colors.white70),
                              textAlign: TextAlign.center,
                            ),
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
    );
  }
}
