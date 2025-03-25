import 'package:flutter/material.dart';

class SizeConfig {
  static double desctop = 1300;
  static double tablet = 800;
  static late double width, hegith;
  //This method is not practical
  static init(context) {
    width = MediaQuery.sizeOf(context).width;
    hegith = MediaQuery.sizeOf(context).height;
  }
}
