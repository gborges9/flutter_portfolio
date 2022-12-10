import 'package:flutter/material.dart';

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
      currentIndex: selectedIndex,
      onTap: onTabSelected,
      items: items,
    );
  }
}
