import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({
    super.key,
    this.header,
    required this.destinations,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final Widget? header;
  final List<NavigationRailDestination> destinations;
  final void Function(int index)? onDestinationSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(AppPadding.appBorder),
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
        ],
      ),
    );
  }
}
