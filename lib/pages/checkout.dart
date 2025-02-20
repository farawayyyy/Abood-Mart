import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart/models/cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(226, 42, 12, 92),
            title: Row(
              children: [
                Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
        body: Column(
          children: [
            Expanded(
              child: Consumer<Cart>(
                builder: (context, cart, child) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 30, 4, 48),
                    child: ListView.builder(
                        itemCount: cart.basketitems.length,
                        itemBuilder: (context, i) {
                          return Card(
                            child: ListTile(
                              title: Text(cart.basketitems[i].name),
                              trailing: IconButton(
                                  onPressed: () {
                                    cart.remove(cart.basketitems[i]);
                                  },
                                  icon: Icon(Icons.remove)),
                            ),
                          );
                        }),
                  );
                },
              ),
            ),
            Container(
              height: 70,
              color: const Color.fromARGB(226, 42, 12, 92),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Place order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pink),
                      )),
                  Consumer<Cart>(builder: (context, cart, child) {
                    return Text(
                      '${cart.totalprice}\$',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    );
                  }),
                  Container(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.credit_card,
                        size: 20,
                        color: Colors.purple,
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
