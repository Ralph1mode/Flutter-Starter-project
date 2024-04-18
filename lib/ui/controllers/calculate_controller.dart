import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final description = Rx<String>('');
  final value = Rx<int>(0);
  final security = Rx(0);

  void increase() {
    value.value++;
  }

  void increaseSecurity() {
    security.value++;
  }

  void decrease() {
    value.value <= 0
        ? Get.snackbar(
            "message", "Impossible de renseigner une valeur inférieur à 0",
            icon: Icon(Icons.add_alert),
            barBlur: 20,
            isDismissible: true,
            duration: const Duration(seconds: 3))
        : value.value--;
  }

  void decreaseSecurity() {
    security.value <= 0
        ? Get.snackbar(
            "message", "Impossible de renseigner une valeur inférieur à 0",
            icon: Icon(Icons.add_alert),
            barBlur: 20,
            isDismissible: true,
            duration: const Duration(seconds: 3))
        : security.value--;
  }

  int sum() {
    return security.value + value.value;
  }
}
