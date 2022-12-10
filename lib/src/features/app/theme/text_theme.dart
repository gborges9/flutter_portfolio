import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final textTheme = GoogleFonts.robotoSlabTextTheme(
  TextTheme(
    // Display
    displayLarge: TextStyle(
      fontSize: 57.sp,
      height: 64 / 57,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontSize: 45.sp,
      height: 52 / 45,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontSize: 36.sp,
      height: 44 / 36,
      letterSpacing: 0,
    ),

    // Headline
    headlineLarge: TextStyle(
      fontSize: 32.sp,
      height: 40 / 32,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      height: 36 / 28,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.sp,
      height: 32 / 24,
      letterSpacing: 0,
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: 22.sp,
      height: 28 / 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      height: 24 / 16,
      letterSpacing: .15,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      height: 25 / 14,
      letterSpacing: .1,
      fontWeight: FontWeight.w500,
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: 14.sp,
      height: 18 / 14,
      letterSpacing: .1,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12.sp,
      height: 16 / 12,
      letterSpacing: .5,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 11.sp,
      height: 15 / 11,
      letterSpacing: .5,
      //color: darker,
      fontWeight: FontWeight.w500,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      height: 24 / 16,
      letterSpacing: .15,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      height: 20 / 14,
      letterSpacing: .25,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
      height: 16 / 12,
      letterSpacing: .4,
    ),
  ),
);
