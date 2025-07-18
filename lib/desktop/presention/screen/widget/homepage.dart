import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:portfolio/desktop/presention/screen/widget/footersection.dart';
import 'package:portfolio/desktop/presention/screen/widget/leftsection.dart';

import 'package:portfolio/desktop/presention/screen/widget/rightsection.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD7D7D7),
      width: double.infinity,
      height:
          MediaQuery.of(context).size.height, // ← دا بيضمن أن العنصر ليه حجم
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// LEFT SECTION
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: const Leftsection(),
                  ),
                ),

                /// RIGHT SECTION
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Rightsection().animate().slide(
                      begin: Offset(0, -1),
                      end: Offset.zero,
                      duration: Duration(seconds: 2)),
                ),
              ],
            ),
          ),

          //Footer
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Footersection().animate().slide(
                  begin: Offset(0, 1), end: Offset.zero, duration: 2.seconds),
            ),
          ),
        ],
      ),
    );
  }
}
