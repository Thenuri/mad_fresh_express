import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class ItemModel extends ChangeNotifier {

  // List of catogaries 
  final List _items = [
    //[image , title, color]
    ["lib/images/tomato.png","Tomato","100g-Rs.250"],
    ["lib/images/onion.png","Onion","100g-Rs.250"],
    ["lib/images/pum.png","Pumking","100g-Rs.250"],
    ["lib/images/carrot.png","Carrot","100g-Rs.250"],
    ["lib/images/pum.png","Pumking","100g-Rs.250"],
    ["lib/images/carrot.png","Carrot","100g-Rs.250"],
  ];

  get items => _items;

  get catogaries => null;
   
}