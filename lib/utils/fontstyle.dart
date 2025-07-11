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

  static TextStyle montserrat_14(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 14),
      fontFamily: 'Montserrat',
      letterSpacing: 5,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle montserrat_17_bold(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 17),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
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

  static TextStyle montserrat_30_bold(context) {
    return TextStyle(
        color: Colors.black,
        fontSize: responsive_size(context, fontsize: 32),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        letterSpacing: 7);
  }

  static TextStyle montserrat_24_regular(context) {
    return TextStyle(
        color: Colors.black,
        fontSize: responsive_size(context, fontsize: 25),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        letterSpacing: 5);
  }

  static TextStyle montserrat_25(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 25),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle montserrat_18(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle opeaSans_32(context) {
    return TextStyle(
        color: Colors.white,
        fontSize: responsive_size(context, fontsize: 32),
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w700,
        letterSpacing: 5);
  }

  static TextStyle opeaSans_13(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 13),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle opeaSans_14(context) {
    return TextStyle(
        color: Colors.white,
        fontSize: responsive_size(context, fontsize: 14),
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.w700,
        letterSpacing: 5);
  }

  static TextStyle opeaSans_15_regular(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 14),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Raleway_40_regular(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 40),
      fontFamily: 'raleway',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle Raleway_80_bold(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 80),
      fontFamily: 'raleway',
      fontWeight: FontWeight.w900,
    );
  }

  static TextStyle Raleway_25_extrabold(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 25),
      fontFamily: 'raleway',
      fontWeight: FontWeight.w800,
    );
  }
}
