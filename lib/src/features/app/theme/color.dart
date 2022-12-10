import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color.fromRGBO(127, 156, 198, 1);
  static const surface = Color.fromRGBO(237, 240, 243, 1);
  static const onPrimary = white;
  static const onSurface = black;

  static const background = Color.fromRGBO(248, 248, 248, 1);
  static const shadow = Colors.black87;

  static const black = Color(0xFF3E4249);
  static const white = Color.fromRGBO(248, 248, 248, 1);

  static const successGreen = Color(0xFF26ae60);
  static const errorRed = Color(0xFFeb5757);

  static ColorScheme? _scheme;
  static get scheme {
    _scheme ??= ColorScheme.fromSeed(
      seedColor: primary,
      background: background,
      brightness: Brightness.light,
      error: errorRed,
      surface: surface,
    );

    return _scheme;
  }
}
