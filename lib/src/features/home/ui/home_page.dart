import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/widgets/simple_profile.dart';
import 'package:flutter_portfolio/src/features/home/tabs/home_tabs_data.dart';
import 'package:flutter_portfolio/src/features/navigation/ui/widgets/responsive_navigation.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    itemPositionsListener.itemPositions.addListener(_onItemPositionChange);
  }

  @override
  void dispose() {
    itemPositionsListener.itemPositions.removeListener(_onItemPositionChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigation(
      selectedIndex: currentPage,
      routes: homeTabsData,
      onRouteSelected: _onRouteSelected,
      sidebarHeader: const SimpleProfile(),
      body: ScrollablePositionedList.builder(
        shrinkWrap: true,
        itemCount: homeTabsData.length,
        itemBuilder: (context, index) =>
            homeTabsData[index].builder!.call(context),
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }

  void _onRouteSelected(int index, NavRouteData data) {
    setState(() {
      itemScrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
      );
      setState(() => currentPage = index);
    });
  }

  void _onItemPositionChange() {
    if (!mounted ||
        currentPage == itemPositionsListener.itemPositions.value.first.index) {
      return;
    }

    setState(() {
      currentPage = itemPositionsListener.itemPositions.value.first.index;
    });
  }
}
