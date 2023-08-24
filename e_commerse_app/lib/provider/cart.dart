import 'package:flutter/material.dart';

import '../Model/Item.dart';

class Cart with ChangeNotifier{
List SelectedProducts=[];
double price=0;
 add(Item product){
  SelectedProducts.add(product);
  price += product.price.round();
  notifyListeners();
}
delete(Item product) {
 SelectedProducts.remove(product);
 price -= product.price.round();
 notifyListeners();
}
get itemCount{
  return SelectedProducts.length;
}
}
