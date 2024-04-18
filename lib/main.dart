import 'package:flutter/material.dart';
import 'package:flutter_starter_project/config/mainConfig/app_config.dart';
import 'package:flutter_starter_project/config/mainConfig/main_config.dart';

void main() async {
  AppConfig.create(
    appName: "Flutter starter mainConfig Prod",
    baseUrl: "https://mediasofthome.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );
  runApp(MyAppConfig.buildMaterialApp());
}
