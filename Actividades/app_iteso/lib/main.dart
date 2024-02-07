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
        title: const Text('App ITESO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network("https://cruce.iteso.mx/wp-content/uploads/2021/05/ITESO.jpg"),
            SizedBox(
              height: 24,
            ),
            Text(
              "El ITESO, Universidad Jesuita de Guadalajara",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              "San Pedro Tlaquepaque, Jal",
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("La direccion es: Peri sur 1234"),
                          ),
                        );
                      },
                      icon: Icon(Icons.directions)
                    ),
                    Text("Directions"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("El contacto es: (33) 1234-1234"),
                          ),
                        );
                      },
                      icon: Icon(Icons.phone)
                    ),
                    Text("Telefono"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("El horario de atencion es: 07:00 a.m. a 01:00 p.m. y 04:00 p.m. a 7:00 p.m."),
                          ),
                        );
                      },
                      icon: Icon(Icons.access_alarm)
                    ),
                    Text("Horario"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text("El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnologico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, Mexico, fundada en el anio 1957. ",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}