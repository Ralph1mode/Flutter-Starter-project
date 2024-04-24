import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter_project/config/themeConfig/app_colors.dart';
import 'package:flutter_starter_project/core/routes/app_route.dart';
import 'package:flutter_starter_project/translations/l10n/l10n.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyAppConfig {
  static GetMaterialApp buildMaterialApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Midzoo',
      themeMode: ThemeMode.system,
      theme: lightMode,
      darkTheme: darkMode,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}
