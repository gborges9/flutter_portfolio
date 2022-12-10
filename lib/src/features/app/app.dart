import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portfolio/src/features/app/theme/theme.dart';
import 'package:flutter_portfolio/src/infrastructure/navigation/app_router.gr.dart';
import 'package:gbx_di/gbx_di.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key,
      required this.dependencies,
      this.useInheritedMediaQuery = false});

  final Dependencies dependencies;
  final bool useInheritedMediaQuery;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return BlocDependencyProvider(
          dependencies: [dependencies],
          builder: (context, hasLoaded) => MaterialApp.router(
            useInheritedMediaQuery: useInheritedMediaQuery,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('pt', ''),
              Locale('en', ''),
            ],
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: appTheme,
            themeMode: ThemeMode.light,
            routerDelegate: Injector.get<AppRouter>().delegate(),
            routeInformationParser:
                Injector.get<AppRouter>().defaultRouteParser(),
          ),
        );
      },
    );
  }
}
