import 'package:flutter_portfolio/src/features/navigation/routes/nav_route_data.dart';
import 'package:flutter_portfolio/src/infrastructure/localization/strings.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/app_router.gr.dart';
import 'package:heroicons/heroicons.dart';

final navRoutes = [
  NavRouteData(
    labelBuilder: (context) => Strings.of(context).tabHome,
    iconBuilder: (context) => const HeroIcon(HeroIcons.home),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.home,
      style: HeroIconStyle.solid,
    ),
    route: const AboutMeRoute(),
  ),
  NavRouteData(
    labelBuilder: (context) => Strings.of(context).tabSkills,
    iconBuilder: (context) => const HeroIcon(HeroIcons.bookOpen),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.bookOpen,
      style: HeroIconStyle.solid,
    ),
    route: const AboutMeRoute(),
  ),
  NavRouteData(
    labelBuilder: (context) => Strings.of(context).tabExperience,
    iconBuilder: (context) => const HeroIcon(HeroIcons.briefcase),
    activeIconBuilder: (context) => const HeroIcon(
      HeroIcons.briefcase,
      style: HeroIconStyle.solid,
    ),
    route: const AboutMeRoute(),
  ),
];
