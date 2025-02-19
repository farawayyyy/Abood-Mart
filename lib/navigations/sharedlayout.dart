import 'package:cart/navigations/customnavi.dart';
import 'package:cart/navigations/pageindexprovider.dart';
import 'package:cart/pages/checkout.dart';
import 'package:cart/pages/home.dart';
import 'package:cart/pages/mart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SharedLayout extends StatelessWidget {
  const SharedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndexProvider = Provider.of<PageIndexProvider>(context);

    final List<Widget> pages = const [
      Home(),
      Mart(),
      Checkout(),
    ];

    return Scaffold(
      body: pages[pageIndexProvider.currentPageIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentPageIndex: pageIndexProvider.currentPageIndex,
        onDestinationSelected: (int index) {
          pageIndexProvider.setCurrentPageIndex(index);
        },
      ),
    );
  }
}
