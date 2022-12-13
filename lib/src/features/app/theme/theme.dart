import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import './text_theme.dart';

ThemeData? _cachedTheme;

ThemeData get appTheme {
  _cachedTheme ??= ThemeData(
    textTheme: textTheme,
    backgroundColor: AppColors.background,
    canvasColor: AppColors.background,
    colorScheme: AppColors.scheme,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorders.navBorder),
      ),
      margin: AppMargins.card,
    ),
  );
  return _cachedTheme!;
}
