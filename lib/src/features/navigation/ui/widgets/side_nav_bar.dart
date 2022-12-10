import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_portfolio/src/features/app/theme/margins.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({
    super.key,
    this.header,
    required this.destinations,
  });

  final Widget? header;
  final List<NavigationRailDestination> destinations;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(AppPadding.appBorder),
      child: NavigationRail(
        selectedIndex: 0,
        extended: true,
        leading: header,
        destinations: destinations,
      ),
    );
  }
}
