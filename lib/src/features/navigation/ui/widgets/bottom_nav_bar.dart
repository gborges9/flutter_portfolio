import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key,
      required this.items,
      required this.selectedIndex,
      this.onTabSelected});

  final List<BottomNavigationBarItem> items;
  final int selectedIndex;
  final void Function(int index)? onTabSelected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: onTabSelected,
      items: items,
      unselectedItemColor: AppColors.scheme.onSurface,
      selectedItemColor: AppColors.primary,
    );
  }
}
