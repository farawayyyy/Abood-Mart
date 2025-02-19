import 'package:flutter/material.dart';
import './items.dart';

class Cart with ChangeNotifier {
  List<Item> _Items = [];
  double _price = 0.0;
  void add(Item item) {
    _Items.add(item);
    _price += item.price;
    notifyListeners();
  }

  void remove(Item item) {
    _Items.remove(item);
    _price -= item.price;
    notifyListeners();
  }

  int get count {
    return _Items.length;
  }

  double get totalprice {
    return _price;
  }

  List<Item> get basketitems {
    return _Items;
  }
}
