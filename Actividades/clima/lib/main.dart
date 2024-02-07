import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clima',
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: Colors.orange,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("San Francisco",
              style: TextStyle(color: Colors.white, fontSize: 36),),
            Text("Nublado",
              style: TextStyle(color: Colors.white, fontSize: 36)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.cloud,
                  size: 60,
                  color: Colors.grey,),
                Text("19C"),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Actualizar Datos"),
                  onPressed: () {},
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}