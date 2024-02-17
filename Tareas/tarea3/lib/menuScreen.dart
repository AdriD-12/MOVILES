import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedItem = "";
  bool isSelected = false;

  void selectItem(String itemName) {
    setState(() {
      if (selectedItem == itemName) {
        selectedItem = "";
        isSelected = !isSelected;
      } else {
        selectedItem = itemName;
        isSelected = true;
      }
    });
  }

  void showDialogBox(String title) {
    String content = selectedItem != ""
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
                  leading: Image.asset('assets/borgir.png'),
                  title: Text('Burger'),
                  selected: selectedItem == 'Burger' && isSelected,
                  onTap: () => selectItem('Burger'),
                ),
                ListTile(
                  leading: Image.asset('assets/doggy.png'),
                  title: Text('Hot Dog'),
                  selected: selectedItem == 'Hot Dog' && isSelected,
                  onTap: () => selectItem('Hot Dog'),
                ),
                ListTile(
                  leading: Image.asset('assets/frenchy.png'),
                  title: Text('Fries'),
                  selected: selectedItem == 'Fries' && isSelected,
                  onTap: () => selectItem('Fries'),
                ),
                ListTile(
                  leading: Image.asset('assets/sodi.png'),
                  title: Text('Soda'),
                  selected: selectedItem == 'Soda' && isSelected,
                  onTap: () => selectItem('Soda'),
                ),
                ListTile(
                  leading: Image.asset('assets/creamy.png'),
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
              SizedBox(
                height: 40,
                child: VerticalDivider(
                    thickness: 2,
                    width: 20,
                    color: Colors.grey,
                ),
              ),
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
