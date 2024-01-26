import 'package:flutter/material.dart';

class vistaPrincipal extends StatefulWidget {
  const vistaPrincipal({super.key});

  @override
  State<vistaPrincipal> createState() => _vistaPrincipalState();
}

class _vistaPrincipalState extends State<vistaPrincipal> {
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
            )
          ),
          child: 
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.account_circle, size: 50,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Flutter McFlutter",
                          style: Theme.of(context).textTheme.headlineSmall
                          ),
                        ]
                      ),
                      Row(
                        children: [
                          Text("Experienced App Developer"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                    Text("123 Main Street")
                    ],
                  ),
                  Column(
                    children: [
                    Text("(415) 555-0198")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  children: [ 
                    IconButton(
                      onPressed:() {
                        final snackBar = SnackBar(content: Text("Accesibilidad"));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar); // para mandar un mensaje sobre el contexto actual
                        setState(() {
                          b1 = !b1;
                        });
                      }, //contexto: el ambiente sobre el cual la aplicacion esta corriendo
                      icon: Icon(Icons.accessibility, color: !b1 ? Colors.black : Colors.indigo),
                    ),
                  ],
                ),
                Column(
                  children: [ 
                    IconButton(
                      onPressed:() {
                        final snackBar = SnackBar(content: Text("Cronometro"));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar); // para mandar un mensaje sobre el contexto actual
                        setState(() {
                          b2 = !b2;
                        });
                      }, //contexto: el ambiente sobre el cual la aplicacion esta corriendo
                      icon: Icon(Icons.timer, color: !b2 ? Colors.black : Colors.indigo),
                    )
                  ],
                ),
                Column(
                  children: [ 
                    IconButton(
                      onPressed:() {
                        final snackBar = SnackBar(content: Text("Android"));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar); // para mandar un mensaje sobre el contexto actual
                        setState(() {
                          b3 = !b3;
                        });
                      }, //contexto: el ambiente sobre el cual la aplicacion esta corriendo
                      icon: Icon(Icons.phone_android, color: !b3 ? Colors.black : Colors.indigo),
                    )
                  ],
                ),
                Column(
                  children: [ 
                    IconButton(
                      onPressed:() {
                        final snackBar = SnackBar(content: Text("iPhone"));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar); // para mandar un mensaje sobre el contexto actual
                        setState(() {
                          b4 = !b4;
                        });
                      }, //contexto: el ambiente sobre el cual la aplicacion esta corriendo
                      icon: Icon(Icons.phone_iphone, color: !b4 ? Colors.black : Colors.indigo),
                    )
                  ],
                ),
              ],
              ),
            ],
          ),
      );
  }
}