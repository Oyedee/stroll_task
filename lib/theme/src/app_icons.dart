import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  /// Define local assets
  static const String chat = 'assets/icons/chat.svg';
  static const String fire = 'assets/icons/fire.svg';
  static const String user = 'assets/icons/user.svg';
  static const String pokerCards = 'assets/icons/poker_cards.svg';
  static const String mic = 'assets/icons/mic.svg';
  static const String backgroundPicture = 'assets/images/background_picture.png';

  static const double sizeSmall = 22;
  static const double sizeMedium = 35;

  /// Check if the icon is SVG
  static bool isSvg(String path) => path.contains('svg');

  /// Return the icon accordingly
  static Widget icon(
    String path, {
    double size = sizeSmall,
    Color? color,
  }) {
    if (isSvg(path)) {
      return SvgPicture.asset(
        path,
        width: size,
        height: size,
        color: color,
      );
    } else {
      return Image.asset(
        path,
        width: size,
        height: size,
      );
    }
  }
}
