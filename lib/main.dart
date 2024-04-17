import 'package:flutter/material.dart';
import 'package:flutter_starter_project/config/app_config.dart';
import 'package:flutter_starter_project/config/main_config.dart';

void main() async {
  AppConfig.create(
    appName: "Flutter starter app Prod",
    baseUrl: "https://mediasofthome.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );
  runApp(MyAppConfig.buildMaterialApp());
}
