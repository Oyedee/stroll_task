import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromRGBO(15, 17, 21, 1);
  static const Color primaryDark = Color.fromRGBO(15, 17, 21, 1);
  static const Color secondary = Color.fromRGBO(139, 136, 239, 1);

  static const Color text = Color(0xff121212);
  static const Color background = Color(0xfff2f2f2);
  static const Color white = Color(0xffffffff);
  static const Color lightGray = Color(0xffcccccc);
  static const Color darkerGray = Color(0xFFD3D3D3);
  static const Color button = Color(0xFF232A2E);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [
      primary,
      primaryDark,
    ],
  );
}
