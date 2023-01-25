import 'package:flutter/material.dart';

class Resturant_2 extends StatefulWidget {
  const Resturant_2({super.key});

  @override
  State<Resturant_2> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant_2> {
  @override
  List<Map<String, dynamic>> foodItems = [
    {'name': 'Chicken Kabab', 'price': 350},
    {'name': 'Chicken Leg', 'price': 100},
    {'name': 'Griled Chicken', 'price': 200},
    {'name': 'Chicken handi', 'price': 300},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Non-Veg Resturant"),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
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
