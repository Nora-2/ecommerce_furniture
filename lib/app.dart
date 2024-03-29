import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/app_routes.dart';
import 'package:furniture_app/core/services/l10n/app_localizations.dart';
import 'package:furniture_app/core/services/theme/app_theme.dart';

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('En'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      theme: AppThemeData.lightThemeData,
      routes: AppRoutes.routes,
    );
  }
}
