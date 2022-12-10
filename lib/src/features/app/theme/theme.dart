import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import './text_theme.dart';

ThemeData? _cachedTheme;

ThemeData get appTheme {
  _cachedTheme ??= ThemeData(
    textTheme: textTheme,
    backgroundColor: AppColors.background,
    canvasColor: AppColors.background,
    colorScheme: AppColors.scheme,
  );
  return _cachedTheme!;
}
