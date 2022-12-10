import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/simple_profile.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/social_media_buttons.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';
import 'package:flutter_portfolio/src/features/home/tabs/home_tabs_data.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:gbx_core/gbx_core.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigation(
      selectedIndex: currentPage,
      routes: homeTabsData,
      onRouteSelected: (index, data) => setState(() => currentPage = index),
      sidebarHeader: const SimpleProfile(),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: homeTabsData[currentPage].builder!(context),
      ),
    );
  }
}
