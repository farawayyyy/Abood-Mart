import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentPageIndex;
  final Function(int) onDestinationSelected;

  const CustomNavigationBar({
    super.key,
    required this.currentPageIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 70,
      indicatorColor: Colors.purple,
      overlayColor: MaterialStatePropertyAll(Colors.blue),
      selectedIndex: currentPageIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.shopping_bag_outlined)),
          selectedIcon: Icon(Icons.shopping_bag),
          label: 'Mart',
        ),
        NavigationDestination(
          icon: Badge(
            child: Icon(Icons.shopping_cart_outlined),
          ),
          selectedIcon: Icon(Icons.shopping_cart_rounded),
          label: 'Cart',
        ),
      ],
    );
  }
}
