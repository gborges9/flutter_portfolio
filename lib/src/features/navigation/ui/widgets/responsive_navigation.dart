import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/navigation/routes/nav_routes.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/bottom_nav_bar.dart';

class ResponsiveNavigation extends StatelessWidget {
  const ResponsiveNavigation({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final useBottomNav = _useBottomNavBar();
    return Scaffold(
      bottomNavigationBar: useBottomNav
          ? BottomNavBar(items: getNavigationBarItems(context))
          : null,
      body: useBottomNav
          ? body
          : Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 300,
                  color: Colors.blue,
                ),
                if (body != null) Expanded(child: body!),
              ],
            ),
    );
  }

  static bool _useBottomNavBar() {
    return true;
  }

  static List<NavigationRailDestination> getDestinations(BuildContext context) {
    return navRoutes
        .map(
          (navData) => NavigationRailDestination(
            icon: navData.icon(context),
            label: Text(
              navData.title(context),
            ),
          ),
        )
        .toList();
  }

  static List<BottomNavigationBarItem> getNavigationBarItems(
      BuildContext context) {
    return navRoutes
        .map(
          (navData) => BottomNavigationBarItem(
            icon: navData.icon(context),
            label: navData.title(context),
          ),
        )
        .toList();
  }
}
