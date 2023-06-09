import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';



class ItemModel extends ChangeNotifier {

  ItemModel() {
    loadItems();
  }

  // List of catogaries 
  // List _items = [
  //   //[image , title, color]
  //   ["lib/images/tomato.png","Tomato","100g-Rs.250"],
  //   ["lib/images/onion.png","Onion","100g-Rs.250"],
  //   ["lib/images/pum.png","Pumking","100g-Rs.250"],
  //   ["lib/images/carrot.png","Carrot","100g-Rs.250"],
  //   ["lib/images/pum.png","Pumking","100g-Rs.250"],
  //   ["lib/images/carrot.png","Carrot","100g-Rs.250"],
  // ];

 List _items = [];

  get items => _items;
  
  get catogaries => null;

  
  
  Future<void> loadItems() async {
    
    

    

    final jsonString = await rootBundle.loadString('lib/json/veg.json');
    final jsonItems = json.decode(jsonString);

    _items = List.from(jsonItems.map((item) => List<dynamic>.from(jsonItems)));

    print(_items);


    notifyListeners();
  }

  
}



// class ItemModel extends ChangeNotifier {
//   List<Item> _items = [];

//   List<Item> get items => _items;

//   Future<void> loadItems() async {
//     final jsonString = await rootBundle.loadString('lib/json/items.json');
//     final jsonItems = json.decode(jsonString);

//     _items = List<Item>.from(jsonItems.map((item) => Item.fromJson(item)));

//     print(_items);

//     notifyListeners();
//   }
// }

// class Item {
//   final String image;
//   final String title;
//   final String price;

//   Item({
//     required this.image,
//     required this.title,
//     required this.price,
//   });

//   factory Item.fromJson(Map<String, dynamic> json) {
//     return Item(
//       image: json['image'],
//       title: json['title'],
//       price: json['price'],
//     );
//   }
// }


