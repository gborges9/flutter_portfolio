import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/src/features/navigation/routes/nav_routes.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/bottom_nav_bar.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/side_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
      bottomNavigationBar: useBottomNav ? BottomNavBar(items: []) : null,
      body: useBottomNav
          ? body
          : Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SideNavBar(
                  destinations: getDestinations(context),
                ),
                if (body != null) Expanded(child: body!),
              ],
            ),
    );
  }

  static bool _useBottomNavBar() {
    final isMobile = Device.screenType == ScreenType.mobile;
    final isTablet = Device.screenType == ScreenType.tablet;
    final isPortrait = Device.orientation == DeviceOrientation.landscapeLeft ||
        Device.orientation == DeviceOrientation.landscapeRight;
    return isMobile || isTablet && isPortrait;
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
}
