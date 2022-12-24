import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/simple_profile.dart';
import 'package:flutter_portfolio/src/features/app/ui/controllers/custom_page_controller.dart';
import 'package:flutter_portfolio/src/features/home/tabs/home_tabs_data.dart';
import 'package:flutter_portfolio/src/features/app/ui/widgets/custom_page_view.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final CustomPageController pageController = CustomPageController();

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
      body: CustomPageView(
        controller: pageController,
        children: homeTabsData.map((e) => e.builder!.call(context)).toList(),
        // itemBuilder: (context, index) =>
        //     homeTabsData[index].builder?.call(context) ?? Container(),
        // itemCount: homeTabsData.length,
        // scrollDirection: Axis.vertical,
        // pageSnapping: false,
        onPageChanged: (value) => setState(() => currentPage = value),
      ),
    );
  }

  void _onRouteSelected(int index, NavRouteData data) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
