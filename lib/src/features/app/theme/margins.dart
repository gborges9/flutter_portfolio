import 'package:flutter/material.dart';

class AppMargins {
  const AppMargins._();

  static double get halfPadding => 2.0;
  static double get padding => 4.0;
  static double get doublePadding => 8.0;
  static double get triplePadding => 12.0;
  static double get quadPadding => 16.0;

  static double get cardPadding => 24.0;

  static double get appBorder => 16.0;

  static get card => EdgeInsets.symmetric(
        horizontal: appBorder / 2,
        vertical: padding,
      );
}
