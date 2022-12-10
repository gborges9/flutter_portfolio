import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/dependency_container.dart';
import 'package:flutter_portfolio/src/features/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(
        useInheritedMediaQuery: false,
        dependencies: DependencyContainer(),
      ),
    ),
  );
}
