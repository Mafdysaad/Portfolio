import 'package:flutter/material.dart';
import 'package:portfolio/utils/fontstyle.dart';

class Introdection extends StatelessWidget {
  const Introdection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Positioned.fill(
              child: Container(
            color: Color.fromARGB(255, 28, 28, 28),
            child: Image(
              image: AssetImage('assets/images/itbackground.png'),
              fit: BoxFit.fitWidth,
            ),
          )),
          Positioned.fill(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 90),
                child: Text(
                  'MOBILE DEVELOPER',
                  style: Style.opeaSans_(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'He my name is mafdt  and i have two years of experance into flutter developer at spyway company im working there for two years as flutter deveopler and im deveolped many project by using flutter such as bookly app,parry app and more ',
                  style: Style.montserrat_18(context),
                  textAlign: TextAlign.justify,
                  maxLines: 5,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'MORE',
                        style: Style.montserrat_18(context),
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.white,
                    ),
                  ],
                )),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
