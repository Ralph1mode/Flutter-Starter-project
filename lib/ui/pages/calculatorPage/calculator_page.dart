import 'package:flutter/material.dart';
import 'package:flutter_starter_project/core/services/size_media_query.dart';
import 'package:flutter_starter_project/ui/controllers/calculate_controller.dart';
import 'package:flutter_starter_project/ui/widgets/app_bar.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: MyAppBar(
            title: "Calculator page title",
            titleCenter: true,
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("place your orders here"),
            SizedBox(
              height: sizeHeight(context, 0.03),
            ),
            _ButtonCount(context, description: 'Kit de bureau', type: 1),
            SizedBox(
              height: sizeHeight(context, 0.03),
            ),
            _ButtonCount(context, description: 'Kit de sécurité', type: 2),
            SizedBox(
              height: sizeHeight(context, 0.03),
            ),
            // _SumButton(context),
            Obx(() {
              return Text(
                  "Here is the sum of those data ${controller.sum().toString()}");
            }),
            SizedBox(
              height: sizeHeight(context, 0.03),
            ),
            _BackHomeButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _ButtonCount(BuildContext context,
    {required String description, required int type}) {
  final CalculatorController controller = Get.put(CalculatorController());
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(description),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () => type == 1
                  ? controller.decrease()
                  : controller.decreaseSecurity(),
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Obx(() => type == 1
                ? Text('${controller.value.value}')
                : Text('${controller.security.value}')),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () => type == 1
                  ? controller.increase()
                  : controller.increaseSecurity(),
              icon: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _BackHomeButton(BuildContext context) {
  return ElevatedButton(
      onPressed: () => Get.back(), child: const Text("Back to home"));
}
