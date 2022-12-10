import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavRouteData {
  final String Function(BuildContext context) title;
  final WidgetBuilder icon;
  final WidgetBuilder? activeIcon;

  final PageRouteInfo route;

  const NavRouteData({
    required this.title,
    required this.icon,
    this.activeIcon,
    required this.route,
  });
}
