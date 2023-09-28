import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class CategoryModel extends ChangeNotifier {

  // List of catogaries 
  final List _categories = [
    //[image , title, color]
    ["lib/images/veg.png","Vegetables"],
    ["lib/images/fruits.png","Fruits"],
    ["lib/images/meat.png","Meat"],
    ["lib/images/sea.png","Seafood"]
  ];

  get categories => _categories;
   
}

