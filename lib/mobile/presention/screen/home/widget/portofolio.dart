import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> photo = [
      Assets.resourceImagesWaterapp,
      Assets.resourceImagesWhaterap,
      Assets.resourceImagesChatapp,
      Assets.resourceImagesIbmapp,
    ];
    return Column(
        children: List.generate(
            photo.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Image.asset(
                      photo[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                )));
  }
}
