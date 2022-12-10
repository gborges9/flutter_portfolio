import 'package:flutter/material.dart';
import './color.dart';
import './text_theme.dart';

final theme = ThemeData(
  iconTheme: const IconThemeData(color: darker),
  textTheme: textTheme,
  cardColor: cardColor,
  backgroundColor: appBgColor,
  canvasColor: appBgColor,
);
