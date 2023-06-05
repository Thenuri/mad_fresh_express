import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class CategoaryModel extends ChangeNotifier {

  // List of catogaries 
  final List _catogaries = [
    //[image , title, color]
    ["lib/images/veg.png","Vegetables",const Color(0xFF95FF9A)],
    ["lib/images/fruits.png","Fruits",const Color(0xFF95FF9A)],
    ["lib/images/meat.png","Meat",const Color(0xFF95FF9A)],
    ["lib/images/sea.png","Seafood",const Color(0xFF95FF9A)]
  ];

  get catogaries => _catogaries;
   
}