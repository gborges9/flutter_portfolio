import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/responsive_insets.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/bottom_nav_bar.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/side_nav_bar.dart';

class ResponsiveNavigation extends StatelessWidget {
  const ResponsiveNavigation({
    super.key,
    this.body,
    required this.selectedIndex,
    this.onRouteSelected,
    required this.routes,
    this.sidebarHeader,
    this.sidebarTrailing,
  });

  final void Function(int index, NavRouteData data)? onRouteSelected;
  final int selectedIndex;

  final List<NavRouteData> routes;

  final Widget? body, sidebarHeader, sidebarTrailing;

  @override
  Widget build(BuildContext context) {
    final useBottomNav = _useBottomNavBar(context);
    return ResponsiveInsets(
      value: EdgeInsets.only(
        left: useBottomNav ? 0 : 350 - AppMargins.appBorder,
      ),
      child: Scaffold(
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
            : Stack(
                fit: StackFit.expand,
                children: [
                  if (body != null) body!,
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 350,
                      child: SideNavBar(
                        header: sidebarHeader,
                        trailing: sidebarTrailing,
                        selectedIndex: selectedIndex,
                        onDestinationSelected: (index) =>
                            onRouteSelected?.call(index, routes[index]),
                        destinations: getDestinations(context),
                      ),
                    ),
                  ),
                ],
              ),
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
