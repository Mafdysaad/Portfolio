import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_size.dart';

abstract class Style {
  static TextStyle soyombo20_bold(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: responsive_size(context, fontsize: 20),
        fontFamily: 'soyombo');
  }

  static TextStyle soyombo18_sembold(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: responsive_size(context, fontsize: 18),
        fontFamily: 'soyombo');
  }

  static TextStyle advenpro_25(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 25),
      fontFamily: 'Advent Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle montserrat_12(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle montserrat_32(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 32),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
