// import 'package:flutter/material.dart';
// import 'package:portfolio/core/utils/assets.dart';
// import 'package:portfolio/presention/screen/home/widget/personal_info.dart';

// class CustomscrollBody extends StatelessWidget {
//   const CustomscrollBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Stack(children: [
//         Positioned.fill(
//             child: Image(
//                 image: AssetImage(Assets.resourceImagesBackground),
//                 fit: BoxFit.fill)),
//         Positioned.fill(
//           child: AnimatedOpacity(
//               opacity: _opacity,
//               duration: Duration(milliseconds: 500),
//               child: PersonalInfo()),
//         )
//       ]),
//     );
//   }
// }
