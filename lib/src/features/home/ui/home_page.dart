import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/simple_profile.dart';
import 'package:flutter_portfolio/src/features/home/tabs/home_tabs_data.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';
import 'package:gbx_core/gbx_core.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final PageController pageController = PageController();

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
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) =>
            homeTabsData[index].builder?.call(context) ?? Container(),
        itemCount: homeTabsData.length,
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        onPageChanged: (value) => setState(() => currentPage = value),
      ),
    );
  }

  void _onRouteSelected(int index, NavRouteData data) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
