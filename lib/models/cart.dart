import 'dart:core';

import 'package:ecommer_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike AF1',
        price: '236',
        imagePath: 'lib/images/nike-2.jpg',
        decription:
            'The forward-thinking design of his latest sigbature shoe.'),
    Shoe(
        name: 'Air Jodans',
        price: '336',
        imagePath: 'lib/images/nike-3.jpg',
        decription:
            'The forward-thinking design of his latest sigbature shoe. '),
    Shoe(
        name: 'AIR JORDAN 1',
        price: '356',
        imagePath: 'lib/images/nike-4.jpg',
        decription: 'Inspired by the original AJ1, this mid-top edition  '),
    Shoe(
        name: 'AIR JORDAN 1',
        price: '356',
        imagePath: 'lib/images/nike-5.jpg',
        decription: 'Inspired by the original AJ1, this mid-top edition '),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
