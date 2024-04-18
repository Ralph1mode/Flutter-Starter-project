import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_starter_project/config/mainConfig/app_config.dart';
import 'package:flutter_starter_project/core/services/size_media_query.dart';
import 'package:flutter_starter_project/ui/widgets/app_bar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: MyAppBar(
            title: AppConfig.shared.appName,
            titleCenter: true,
          )),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _themeContainer(),
            Text(
                "${AppLocalizations.of(context).appName} : ${AppConfig.shared.appName}"),
            Text(
                "${AppLocalizations.of(context).urlBase} : ${AppConfig.shared.baseUrl}"),
            Text("Flavor : ${AppConfig.shared.flavor}"),
            Text(
              AppLocalizations.of(context).appSlogan,
            ),
            SizedBox(
              height: sizeHeight(context, 0.05),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/calculate');
                },
                child: Text(AppLocalizations.of(context).getAccesCalculator))
          ],
        ),
      ),
    );
  }
}

class _themeContainer extends StatelessWidget {
  const _themeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return SizedBox(
      width: sizeWidth(context, 0.5),
      height: sizeHeight(context, 0.5),
      child: brightness == Brightness.dark
          ? Image.asset("assets/imgs/moon.png")
          : Image.asset("assets/imgs/sun.png"),
    );
  }
}
