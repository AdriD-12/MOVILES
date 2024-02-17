import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedItem = 'hola';
  bool isSelected = false;

  void selectItem(String itemName) {
    setState(() {
      if (selectedItem == itemName) {
        isSelected = !isSelected;
      } else {
        selectedItem = itemName;
        isSelected = true;
      }
    });
  }

  void showDialogBox(String title) {
    String content = selectedItem != null
        ? selectedItem
        : "Seleccione un platillo";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Menu Demo',
          style: TextStyle(
            color: Colors.white,
          ),),
        ),
        backgroundColor: Color(0xFF1d96f2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Explore the restaurants delicious menu items below!',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.emoji_food_beverage_sharp),
                  title: Text('Burger'),
                  selected: selectedItem == 'Burger' && isSelected,
                  onTap: () => selectItem('Burger'),
                ),
                ListTile(
                  leading: Icon(Icons.local_pizza),
                  title: Text('Hot Dog'),
                  selected: selectedItem == 'Hot Dog' && isSelected,
                  onTap: () => selectItem('Hot Dog'),
                ),
                ListTile(
                  leading: Icon(Icons.local_pizza),
                  title: Text('Fries'),
                  selected: selectedItem == 'Fries' && isSelected,
                  onTap: () => selectItem('Fries'),
                ),
                ListTile(
                  leading: Icon(Icons.local_pizza),
                  title: Text('Soda'),
                  selected: selectedItem == 'Soda' && isSelected,
                  onTap: () => selectItem('Soda'),
                ),
                ListTile(
                  leading: Icon(Icons.icecream),
                  title: Text('Ice Cream'),
                  selected: selectedItem == 'Ice Cream' && isSelected,
                  onTap: () => selectItem('Ice Cream'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialogBox('Pickup');
                },
                child: Text('Pickup'),
              ),
              VerticalDivider(),
              ElevatedButton(
                onPressed: () {
                  showDialogBox('Delivery');
                },
                child: Text('Delivery'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
