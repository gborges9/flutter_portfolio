import 'package:flutter/material.dart';
import './color.dart';
import './text_theme.dart';

final theme = ThemeData(
  textTheme: textTheme,
  backgroundColor: appBgColor,
  canvasColor: appBgColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primary,
    background: appBgColor,
    brightness: Brightness.light,
    error: errorRed,
    surface: surfaceColor,
  ),
);
