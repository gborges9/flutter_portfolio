import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/simple_profile.dart';
import 'package:flutter_portfolio/src/features/home/tabs/home_tabs_data.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigation(
      selectedIndex: currentPage,
      routes: homeTabsData,
      onRouteSelected: _onRouteSelected,
      sidebarHeader: const SimpleProfile(),
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            fadeThroughTransition(
                context, primaryAnimation, secondaryAnimation, child),
        child: homeTabsData[currentPage].builder!(context),
      ),
    );
  }

  void _onRouteSelected(int index, NavRouteData data) {
    setState(() {
      currentPage = index;
    });
  }
}
