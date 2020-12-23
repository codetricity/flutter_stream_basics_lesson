import 'dart:async';

import 'package:flutter/material.dart';
import './main_screen.dart';

void main() {
  runApp(MyApp());
}

@override
void dispose() {
  controller.close();
}

var controller = StreamController.broadcast();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MainScreen(
          controller: controller,
        ),
      ),
    );
  }
}
