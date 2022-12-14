import 'package:flutter/material.dart';

class AppColors {
  static const seed = Color.fromRGBO(24, 96, 165, 1);
  static const primary = Color.fromRGBO(24, 96, 165, 1);
  static const surface = Color.fromRGBO(237, 240, 243, 1);
  static const onPrimary = white;
  static const onSurface = black;

  static const background = Color.fromRGBO(248, 248, 248, 1);
  static const shadow = Colors.black87;

  //static const black = Colors.black;
  static const black =
      Color.fromRGBO(32, 36, 43, 1); //Color.fromRGBO(62, 66, 73, 1);
  static const darkGrey = Color.fromRGBO(88, 89, 97, 1);
  static const white = Color.fromRGBO(248, 248, 248, 1);

  static const successGreen = Color.fromRGBO(38, 174, 96, 1);
  static const errorRed = Color.fromRGBO(235, 87, 87, 1);

  static ColorScheme? _scheme;
  static ColorScheme get scheme {
    _scheme ??= ColorScheme.fromSeed(
      seedColor: seed,
      primary: primary,
      background: background,
      brightness: Brightness.light,
      error: errorRed,
      surface: surface,
    );

    return _scheme!;
  }
}
