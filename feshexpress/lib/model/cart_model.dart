// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';



// class cartModel extends ChangeNotifier {

//   // List of catogaries 
//   final List _cart = [
//     //[image , title, color]
//     ["lib/images/tomato.png","Tomato","100g-Rs.250"],
//     ["lib/images/onion.png","Onion","100g-Rs.250"],
    
//   ];

//   get cart => _cart;

//   get catogaries => null;
   
// }

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CartItemModel {
  String name;
  String image;
  String price;
  String quantity;
  double totalPrice;

  CartItemModel({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  }) : totalPrice = double.parse(price) * int.parse(quantity);

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
    name: json['msg'],
    image: json['image'],
    price: json['price'],
    quantity: json['quantity'],
  );

  @override
  String toString() {
    return "CartItemModel(name: $name, image: $image, price: $price, quantity: $quantity, totalPrice: $totalPrice)";
  }
}

class CartModel extends ChangeNotifier {
  List<CartItemModel> cartList = [];

  List<CartItemModel> get getCartList {
    return cartList;
  }

  void addCartItems({
    required String name,
    required String image,
    required String price,
    required String quantity,
  }) {
    cartList.add(CartItemModel(
      name: name,
      image: image,
      price: price,
      quantity: quantity,
    ));
    notifyListeners();
  }

  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var item in cartList) {
      totalPrice += item.totalPrice;
    }
    return totalPrice;
  }
  

  void removeItem(int index) {
    cartList.removeAt(index);

    notifyListeners();
    
    
  }
}
