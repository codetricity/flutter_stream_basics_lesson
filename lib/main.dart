import 'dart:async';

import 'package:flutter/material.dart';
import './main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final StreamController controller = StreamController();

  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MainScreen(
          controller: controller,
        ),
      ),
    );
  }
}
