import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class cartModel extends ChangeNotifier {

  // List of catogaries 
  final List _cart = [
    //[image , title, color]
    ["lib/images/tomato.png","Tomato","100g-Rs.250"],
    ["lib/images/onion.png","Onion","100g-Rs.250"],
    
  ];

  get cart => _cart;

  get catogaries => null;
   
}