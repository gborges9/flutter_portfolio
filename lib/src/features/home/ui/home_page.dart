import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/navigation/routes/nav_routes.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: getRoutes(),
      builder: (context, child, tabController) => ResponsiveNavigation(
        body: child,
      ),
    );
  }

  static List<PageRouteInfo> getRoutes() {
    return navRoutes.map((e) => e.route).toList();
  }
}
