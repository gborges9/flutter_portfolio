import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/about_me_page.dart';
import 'package:flutter_portfolio/src/features/home/ui/home_page.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/nav_route_data.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:heroicons/heroicons.dart';

final homeTabsData = [
  NavRouteData.builder(
    labelBuilder: (context) => Strings.of(context).tabHome,
    iconBuilder: (context) => const HeroIcon(HeroIcons.home),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.home,
      style: HeroIconStyle.solid,
    ),
    builder: (context) => const AboutMePage(),
  ),
  NavRouteData.builder(
    labelBuilder: (context) => Strings.of(context).tabSkills,
    iconBuilder: (context) => const HeroIcon(HeroIcons.bookOpen),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.bookOpen,
      style: HeroIconStyle.solid,
    ),
    builder: (context) => Center(child: Text("2")),
  ),
  NavRouteData.builder(
    labelBuilder: (context) => Strings.of(context).tabExperience,
    iconBuilder: (context) => const HeroIcon(HeroIcons.briefcase),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.briefcase,
      style: HeroIconStyle.solid,
    ),
    builder: (context) => Center(child: Text("3")),
  ),
  NavRouteData.builder(
    labelBuilder: (context) => Strings.of(context).tabContact,
    iconBuilder: (context) => const HeroIcon(HeroIcons.phone),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.phone,
      style: HeroIconStyle.solid,
    ),
    builder: (context) => Center(child: Text("4")),
  ),
];
