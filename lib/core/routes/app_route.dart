import 'package:flutter_starter_project/ui/pages/calculatorPage/calculator_page.dart';
import 'package:flutter_starter_project/ui/pages/homePage/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const home = '/';
  static const calculate = '/calculate';

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
    GetPage(
        name: calculate,
        page: () => const CalculatorPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 400)),
  ];
}
