import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _montserratTheme = GoogleFonts.montserratTextTheme();

final textTheme = GoogleFonts.robotoCondensedTextTheme(
  TextTheme(
    // Display
    displayLarge: const TextStyle(
      fontSize: 57,
      height: 64 / 57,
      letterSpacing: 0,
    ),
    displayMedium: const TextStyle(
      fontSize: 45,
      height: 52 / 45,
      letterSpacing: 0,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      height: 44 / 36,
      letterSpacing: 0,
    ),

    // Headline
    headlineLarge: const TextStyle(
      fontSize: 32,
      height: 40 / 32,
      letterSpacing: 0,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      height: 36 / 28,
      letterSpacing: 0,
    ),
    headlineSmall: const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      letterSpacing: 0,
    ),

    // Title
    titleLarge: const TextStyle(
      fontSize: 22,
      height: 28 / 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      letterSpacing: .15,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle(
      fontSize: 14,
      height: 25 / 14,
      letterSpacing: .1,
      fontWeight: FontWeight.w500,
    ),

    // Label
    labelLarge: _montserratTheme.labelLarge!.copyWith(
      fontSize: 14,
      height: 18 / 14,
      letterSpacing: .1,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: _montserratTheme.labelMedium!.copyWith(
      fontSize: 12,
      height: 16 / 12,
      letterSpacing: .5,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: _montserratTheme.labelSmall!.copyWith(
      fontSize: 11,
      height: 15 / 11,
      letterSpacing: .5,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),

    // Body
    bodyLarge: _montserratTheme.bodyLarge!.copyWith(
      fontSize: 16,
      height: 24 / 16,
      letterSpacing: .15,
    ),
    bodyMedium: _montserratTheme.bodyMedium!.copyWith(
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: .25,
    ),
    bodySmall: _montserratTheme.bodySmall!.copyWith(
      fontSize: 12,
      height: 16 / 12,
      letterSpacing: .4,
    ),
  ),
);
