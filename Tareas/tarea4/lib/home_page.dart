import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tarea4/crypto_list.dart';
import 'package:tarea4/data/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> criptos = [];

  @override
  void initState() {
    criptos = jsonDecode(CRYPTO_EXCHANGES);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto look',
        style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF2296f3),
      ),
      body: CryptoList(criptos: criptos),
    );
  }
}