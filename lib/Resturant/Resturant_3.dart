import 'package:flutter/material.dart';

class Resturant_3 extends StatefulWidget {
  const Resturant_3({super.key});

  @override
  State<Resturant_3> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant_3> {
  @override
  List<Map<String, dynamic>> foodItems = [
    {'name': 'North Indian Thali', 'price': 150},
    {'name': 'South Indian Thali', 'price': 200},
    {'name': 'Aloo Paratha', 'price': 100},
    {'name': 'Lassi', 'price': 50},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pure Veg Resturant"),
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
