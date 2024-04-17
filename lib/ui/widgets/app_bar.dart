import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  String title;
  bool titleCenter;
  MyAppBar({super.key, required this.title, required this.titleCenter});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: widget.titleCenter,
        title: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
