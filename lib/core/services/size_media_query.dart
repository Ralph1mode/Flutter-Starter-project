import 'package:flutter/material.dart';

double infinityWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * double.infinity;
}

double infinityHeight(BuildContext context) {
  return MediaQuery.of(context).size.height * double.infinity;
}

double sizeHeight(BuildContext context, double size) {
  return MediaQuery.of(context).size.height * size;
}

double sizeWidth(BuildContext context, double size) {
  return MediaQuery.of(context).size.width * size;
}
