import 'app_router.gr.dart';
import 'package:gbx_di/gbx_di.dart';

class NavigationDependency extends Dependencies {
  const NavigationDependency();
  @override
  Future<void> inject() async {
    Injector.register<AppRouter>(AppRouter());
  }
}
