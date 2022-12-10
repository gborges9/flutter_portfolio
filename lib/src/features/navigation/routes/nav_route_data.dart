import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavRouteData {
  final String Function(BuildContext context) _labelBuilder;
  final WidgetBuilder _iconBuilder;
  final WidgetBuilder _activeIconBuilder;

  final PageRouteInfo route;

  const NavRouteData({
    required String Function(BuildContext context) labelBuilder,
    required WidgetBuilder iconBuilder,
    WidgetBuilder? activeIconBuilder,
    required this.route,
  })  : _iconBuilder = iconBuilder,
        _activeIconBuilder = activeIconBuilder ?? iconBuilder,
        _labelBuilder = labelBuilder;

  String getLabel(BuildContext context) => _labelBuilder(context);

  Widget getIcon(BuildContext context) => _iconBuilder(context);
  Widget getActiveIcon(BuildContext context) => _activeIconBuilder(context);
}
