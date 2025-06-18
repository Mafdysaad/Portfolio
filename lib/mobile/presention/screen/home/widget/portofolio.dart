import 'package:flutter/material.dart';
import 'package:portfolio/Data/modle/projects.dart';
import 'package:portfolio/core/utils/assets.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({super.key});

  @override
  State<Portofolio> createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  @override
  Widget build(BuildContext context) {
    bool ishover = false;
    List<Projects> project = [
      Projects(
          Name: 'WeatherApp',
          image: Assets.resourceImagesWaterapp,
          url: 'https://github.com/Mafdysaad/Weather_app.git',
          discraption:
              'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.'),
      Projects(
          Name: 'WeatherApp',
          image: Assets.resourceImagesWaterapp,
          url: 'https://github.com/Mafdysaad/Weather_app.git',
          discraption:
              'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.'),
      Projects(
          Name: 'WeatherApp',
          image: Assets.resourceImagesWaterapp,
          url: 'https://github.com/Mafdysaad/Weather_app.git',
          discraption:
              'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.'),
      Projects(
          Name: 'WeatherApp',
          image: Assets.resourceImagesWaterapp,
          url: 'https://github.com/Mafdysaad/Weather_app.git',
          discraption:
              'A Flutter-based weather app that fetches real-time data using WeatherAPI and manages state with Cubit.'),
    ];
    return Column(
        children: List.generate(
            project.length,
            (index) => GestureDetector(
                  onPanUpdate: (details) {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                project[index].image,
                              ))),
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: ishover ? 1 : 0,
                        child: ListTile(
                          title: Text(
                            project[index].Name,
                          ),
                          subtitle: Text(project[index].discraption),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
