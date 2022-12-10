import 'package:flutter/material.dart';
import 'package:flutter_portfolio/dependency_container.dart';
import 'package:flutter_portfolio/src/features/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(
      dependencies: DependencyContainer(),
    ),
  );
}
