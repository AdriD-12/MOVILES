import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String exchangeName;
  final String exchangeDescription;
  final String date;
  DetailsPage({
    super.key,
    required this.image,
    required this.exchangeName,
    required this.exchangeDescription,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles"),
      ),
      body: Container(),
    );
  }
}