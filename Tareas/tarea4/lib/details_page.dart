import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  final String image;
  final String exchangeName;
  final String exchangeDescription;
  final String date;

  @override
  State<DetailsPage> createState() => _DetailsPageState();

  DetailsPage({
    super.key,
    required this.image,
    required this.exchangeName,
    required this.exchangeDescription,
    required this.date,
  });
}

  class _DetailsPageState extends State<DetailsPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Detalles"),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(widget.image,
                cacheHeight: 120,
                cacheWidth: 120),
                const SizedBox(height: 10),
                Text(widget.exchangeName == "" ? "No disponible" : widget.exchangeName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                const SizedBox(height: 10),
                Text("${widget.date}"),
                const SizedBox(height: 10),
                Text(widget.exchangeDescription == ""
                    ? "Informacion no disponible."
                    : widget.exchangeDescription)
              ],
            ),
        ),
      );
    }
  }
