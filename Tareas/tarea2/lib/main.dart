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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color(0xFF003256),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hourly forecast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Color(0xFF001d35),
                  ),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('16\u00b0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Icon(Icons.dark_mode,
                            color: Color(0xFF65a8f9),
                            ),
                          Text('Now',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('14\u00b0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Icon(Icons.dark_mode,
                            color: Color(0xFF65a8f9),
                            ),
                          Text('12 AM',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('14\u00b0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Icon(Icons.dark_mode,
                            color: Color(0xFF65a8f9),
                            ),
                          Text('1 AM',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('13\u00b0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Icon(Icons.dark_mode,
                            color: Color(0xFF65a8f9),
                            ),
                          Text('2 AM',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('11\u00b0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Icon(Icons.dark_mode,
                            color: Color(0xFF65a8f9),
                            ),
                          Text('3 AM',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text('10-day forecast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                /////////////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Today  28\u00b0/9\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 5,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.wb_sunny,
                              color: Color(0xFFffd100),
                        ),
                        Text('28\u00b0/9\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                //////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Tuesday  27\u00b0/9\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tuesday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.sunny_snowing,
                              color: Color(0xFFffd100),
                        ),
                        Text('27\u00b0/9\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                /////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Wednesday  26\u00b0/7\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wednesday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.sunny_snowing,
                              color: Color(0xFFffd100),
                        ),
                        Text('26\u00b0/7\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Thursday  28\u00b0/8\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thursday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.wb_sunny,
                              color: Color(0xFFffd100),
                        ),
                        Text('28\u00b0/8\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                /////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Friday  28\u00b0/9\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Friday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.cloud,
                              color: Color.fromARGB(255, 221, 221, 219),
                        ),
                        Text('28\u00b0/9\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Saturday  29\u00b0/10\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Saturday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.wb_sunny,
                              color: Color(0xFFffd100),
                        ),
                        Text('29\u00b0/10\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),/////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Sunday  26\u00b0/7\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sunday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.cloudy_snowing,
                              color: Color.fromARGB(255, 214, 214, 212),
                        ),
                        Text('26\u00b0/7\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),//////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Monday  26\u00b0/7\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.cloud,
                              color: Color.fromARGB(255, 202, 202, 201),
                        ),
                        Text('26\u00b0/7\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                /////////////////////
                GestureDetector(
                  onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Tuesday  26\u00b0/7\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ),
                      color: Color(0xFF001d35),
                    ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tuesday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.wb_sunny,
                              color: Color(0xFFffd100),
                        ),
                        Text('26\u00b0/7\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                ////////////////
                GestureDetector(onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Wednesday  24\u00b0/11\u00b0"),
                          ),
                        );
                      },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color(0xFF001d35),
                      ),
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 2,
                      bottom: 2,
                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 14,
                      bottom: 14
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wednesday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.sunny_snowing,
                              color: Color(0xFFffd100),
                        ),
                        Text('24\u00b0/11\u00b0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
      )
    );
  }
}
