import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/borders.dart';
import 'package:flutter_portfolio/src/features/app/theme/elevation.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({
    super.key,
    this.header,
    this.trailing,
    required this.destinations,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final Widget? header, trailing;
  final List<NavigationRailDestination> destinations;
  final void Function(int index)? onDestinationSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorders.navBorder)),
      elevation: AppElevation.elevation3,
      margin: EdgeInsets.only(
        top: AppMargins.appBorder,
        bottom: AppMargins.appBorder,
        left: AppMargins.appBorder,
        right: AppMargins.appBorder,
      ),
      child: Column(
        children: [
          if (header != null) header!,
          Expanded(
            child: NavigationRail(
              backgroundColor: Colors.transparent,
              selectedIndex: selectedIndex,
              extended: true,
              destinations: destinations,
              onDestinationSelected: onDestinationSelected,
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
