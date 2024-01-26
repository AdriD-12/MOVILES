import 'package:flutter/material.dart';
import 'package:tarea1/vista_principal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),),
          backgroundColor: Color(0XFF0097fb),
        ),
        body: vistaPrincipal())
    );
  }
}