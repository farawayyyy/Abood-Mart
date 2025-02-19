import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _PageOneState();
}

class _PageOneState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(226, 42, 12, 92),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
      body: Container(
        color: const Color.fromARGB(255, 30, 4, 48),
      ),
    );
  }
}
