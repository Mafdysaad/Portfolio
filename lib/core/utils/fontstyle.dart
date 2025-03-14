import 'package:flutter/material.dart';

abstract class Style {
  static TextStyle soyombo20_bold() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
        fontFamily: 'soyombo');
  }

  static TextStyle soyombo18_sembold() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        fontFamily: 'soyombo');
  }

  static TextStyle advenpro_25() {
    return TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontFamily: 'Advent Pro',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle montserrat_12() {
    return TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle montserrat_32() {
    return TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
