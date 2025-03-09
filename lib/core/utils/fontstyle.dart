import 'package:flutter/material.dart';

abstract class Fontstyle {
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
}
