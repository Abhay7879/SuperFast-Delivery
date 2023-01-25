import 'package:flutter/material.dart';

class Resturant_1 extends StatefulWidget {
  const Resturant_1({super.key});

  @override
  State<Resturant_1> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant_1> {
  @override
  List<Map<String, dynamic>> foodItems = [
    {'name': 'Pizza', 'price': 150},
    {'name': 'Burger', 'price': 100},
    {'name': 'Pasta', 'price': 200},
    {'name': 'Sushi', 'price': 250},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fast Food Cafe"),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(foodItems[index]['name']),
                subtitle: Text("Price: ${foodItems[index]['price']}"),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {},
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
