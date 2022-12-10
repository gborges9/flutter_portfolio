import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/navigation/routes/nav_route_data.dart';
import 'package:flutter_portfolio/src/features/navigation/routes/nav_routes.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/bottom_nav_bar.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/side_nav_bar.dart';

class ResponsiveNavigation extends StatelessWidget {
  const ResponsiveNavigation({
    super.key,
    this.body,
    required this.selectedIndex,
    this.onRouteSelected,
    required this.routes,
  });

  final void Function(int index, NavRouteData data)? onRouteSelected;
  final int selectedIndex;

  final List<NavRouteData> routes;

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final useBottomNav = _useBottomNavBar(context);
    return Scaffold(
      bottomNavigationBar: useBottomNav
          ? BottomNavBar(
              items: getNavigationBarItems(context),
              selectedIndex: selectedIndex,
              onTabSelected: (index) =>
                  onRouteSelected?.call(index, routes[index]),
            )
          : null,
      body: useBottomNav
          ? body
          : Row(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: 350,
                  child: SideNavBar(
                    selectedIndex: selectedIndex,
                    onDestinationSelected: (index) =>
                        onRouteSelected?.call(index, routes[index]),
                    destinations: getDestinations(context),
                  ),
                ),
                if (body != null) Expanded(child: body!),
              ],
            ),
    );
  }

  static bool _useBottomNavBar(BuildContext context) {
    return getBreakpointEntry(context).adaptiveWindowType <
        AdaptiveWindowType.medium;
  }

  List<NavigationRailDestination> getDestinations(BuildContext context) {
    return routes
        .map(
          (navData) => NavigationRailDestination(
            selectedIcon: navData.getActiveIcon(context),
            icon: navData.getIcon(context),
            label: Text(
              navData.getLabel(context),
            ),
          ),
        )
        .toList();
  }

  List<BottomNavigationBarItem> getNavigationBarItems(BuildContext context) {
    return routes
        .map(
          (navData) => BottomNavigationBarItem(
            icon: navData.getIcon(context),
            label: navData.getLabel(context),
            activeIcon: navData.getActiveIcon(context),
          ),
        )
        .toList();
  }
}
