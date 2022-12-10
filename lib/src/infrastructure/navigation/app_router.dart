import 'package:auto_route/auto_route.dart';
import 'transition.dart';
import 'routes.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: routes,
  transitionsBuilder: fadeThroughTransition,
)
class $AppRouter {}
