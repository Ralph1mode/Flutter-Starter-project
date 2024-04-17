import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter_project/config/theme/theme.dart';
import 'package:flutter_starter_project/core/routes/app_route.dart';
import 'package:flutter_starter_project/l10n/l10n.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyAppConfig {
  static GetMaterialApp buildMaterialApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Production',
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
