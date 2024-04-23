import 'package:flutter/material.dart';
import 'package:flutter_starter_project/config/mainconfig/app_config.dart';
import 'package:flutter_starter_project/config/mainconfig/main_config.dart';

void main() async {
  AppConfig.create(
    appName: "Flutter starter mainconfig Prod",
    baseUrl: "https://mediasofthome.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );
  runApp(MyAppConfig.buildMaterialApp());
}
