import 'package:flutter_portfolio/src/features/navigation/routes/nav_route_data.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/app_router.gr.dart';
import 'package:heroicons/heroicons.dart';

final navRoutes = [
  NavRouteData(
    title: (context) => Strings.of(context).tabHome,
    icon: (context) => const HeroIcon(HeroIcons.home),
    route: const AboutMeRoute(),
  ),
  NavRouteData(
    title: (context) => Strings.of(context).tabSkills,
    icon: (context) => const HeroIcon(HeroIcons.bookOpen),
    route: const AboutMeRoute(),
  ),
  NavRouteData(
    title: (context) => Strings.of(context).tabExperience,
    icon: (context) => const HeroIcon(HeroIcons.briefcase),
    route: const AboutMeRoute(),
  ),
];
