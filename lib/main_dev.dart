import 'package:flutter/material.dart';
import 'package:flutter_starter_project/config/mainconfig/app_config.dart';
import 'package:flutter_starter_project/config/mainconfig/main_config.dart';

void main() async {
  AppConfig.create(
    appName: "Flutter starter mainconfig Dev",
    baseUrl: "https://dev.mediasofthome.com",
    primaryColor: Colors.blue,
    flavor: Flavor.dev,
  );

  runApp(MyAppConfig.buildMaterialApp());
}
