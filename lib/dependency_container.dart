import 'package:flutter_portfolio/src/infrastructure/navigation/navigation_dependency.dart';
import 'package:gbx_di/gbx_di.dart';

class DependencyContainer extends AppDependencies {
  @override
  List<Dependencies> get dependencies => const [
        NavigationDependency(),
      ];
}
