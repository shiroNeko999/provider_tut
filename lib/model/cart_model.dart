import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

  //list of items on sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ["Avocado","100","lib/images/avocado.png",Colors.green],
    ["Banana","50","lib/images/banana.png",Colors.yellow],
    ["Chicken","60","lib/images/chicken.png",Colors.brown],
    ["Water","10","lib/images/water.png",Colors.blue],

  ];

  get shopItems => _shopItems;//getter method

}