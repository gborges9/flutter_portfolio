import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

const multiplier = 1.0;

final textTheme = GoogleFonts.montserratTextTheme(
  const TextTheme(
    // Display
    displayLarge: TextStyle(
      fontSize: 57 * multiplier,
      height: 64 / 57,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontSize: 45 * multiplier,
      height: 52 / 45,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontSize: 36 * multiplier,
      height: 44 / 36,
      letterSpacing: 0,
    ),

    // Headline
    headlineLarge: TextStyle(
      fontSize: 32 * multiplier,
      height: 40 / 32,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontSize: 28 * multiplier,
      height: 36 / 28,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      fontSize: 24 * multiplier,
      height: 32 / 24,
      letterSpacing: 0,
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: 22 * multiplier,
      height: 28 / 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16 * multiplier,
      height: 24 / 16,
      letterSpacing: .15,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14 * multiplier,
      height: 25 / 14,
      letterSpacing: .1,
      fontWeight: FontWeight.w500,
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: 14 * multiplier,
      height: 18 / 14,
      letterSpacing: .1,
      color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12 * multiplier,
      height: 16 / 12,
      letterSpacing: .5,
      color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 11 * multiplier,
      height: 15 / 11,
      letterSpacing: .5,
      color: darker,
      fontWeight: FontWeight.w500,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: 16 * multiplier,
      height: 24 / 16,
      letterSpacing: .15,
    ),
    bodyMedium: TextStyle(
      fontSize: 14 * multiplier,
      height: 20 / 14,
      letterSpacing: .25,
    ),
    bodySmall: TextStyle(
      fontSize: 12 * multiplier,
      height: 16 / 12,
      letterSpacing: .4,
    ),
  ),
);
