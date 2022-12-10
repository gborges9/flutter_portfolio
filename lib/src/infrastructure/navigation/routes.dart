import 'package:auto_route/auto_route.dart';
import 'package:flutter_portfolio/src/features/home/ui/home_page.dart';

const routes = <AutoRoute>[
  AutoRoute(
    initial: true,
    path: '/',
    page: HomePage,
  ),
];
