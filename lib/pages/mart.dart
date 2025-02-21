import 'package:cart/models/items.dart';
import 'package:cart/pages/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart/models/cart.dart';

class Mart extends StatefulWidget {
  const Mart({super.key});

  @override
  State<Mart> createState() => _HomeState();
}

class _HomeState extends State<Mart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                icon: Icon(Icons.shopping_cart_checkout),
                color: Colors.white,
              ),
              Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Consumer<Cart>(builder: (context, cart, child) {
                    return Text(
                      '${cart.count}',
                      style: TextStyle(color: Colors.white),
                    );
                  }))
            ],
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            Icon(
              Icons.shopping_cart_sharp,
              size: 30,
              color: Colors.white,
            ),
            Text(
              'Abood Mart',
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(226, 42, 12, 92),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        color: const Color.fromARGB(255, 30, 4, 48),
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Card(
                  child: Consumer<Cart>(builder: (context, cart, child) {
                return ListTile(
                  title: Text(items[i].name),
                  subtitle: Text(
                    '${items[i].price}\$',
                    style: TextStyle(color: Colors.pink),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        cart.add(items[i]);
                      },
                      icon: Icon(Icons.add_shopping_cart)),
                );
              }));
            }),
      ),
    );
  }
}
