import 'package:cart/navigations/pageindexprovider.dart';
import 'package:cart/navigations/sharedlayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart/models/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageIndexProvider()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const SharedLayout(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
