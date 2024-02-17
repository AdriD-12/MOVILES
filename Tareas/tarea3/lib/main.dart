import 'package:flutter/material.dart';
import 'package:tarea3/menuScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Demo',
      home: MenuScreen(),
    );
  }
}
