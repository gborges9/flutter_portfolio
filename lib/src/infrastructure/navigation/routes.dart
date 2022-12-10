import 'package:auto_route/auto_route.dart';
import 'package:flutter_portfolio/src/features/about_me/ui/about_me_page.dart';
import 'package:flutter_portfolio/src/features/home/ui/home_page.dart';

const routes = <AutoRoute>[
  AutoRoute(
    initial: true,
    path: '/',
    page: HomePage,
    children: [
      AutoRoute(
        initial: true,
        path: 'about',
        page: AboutMePage,
      ),
    ],
  ),
];
