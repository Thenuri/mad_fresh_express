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

import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

import 'package:shared_preferences/shared_preferences.dart';

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
    name: json['name'],
    image: json['image'],
    price: json['price'],
    quantity: json['quantity'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'image': image,
    'price': price,
    'quantity': quantity,
  };

  @override
  String toString() {
    return "CartItemModel(name: $name, image: $image, price: $price, quantity: $quantity, totalPrice: $totalPrice)";
  }
}

class CartModel extends ChangeNotifier {
   static const String kCartKey = 'cart';
  List<CartItemModel> cartList = [];
  
  List<CartItemModel> get getCartList {
    return cartList;
  }

  CartModel() {
    loadCart();
  }

   Future<void> saveCart() async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // todo - change this to send the data to the server. Send with the api token
    List<String> cartItems = cartList.map((item) => json.encode(item.toJson())).toList();
    await prefs.setStringList(kCartKey, cartItems);
    print('Cart saved: $cartItems');
  } catch (error) {
    // Handle error while saving cart
    print('Error saving cart: $error');
  }
}

Future<void> loadCart() async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? cartItems = prefs.getStringList(kCartKey);
    print('Loaded cart: $cartItems');
    if (cartItems != null) {
      // todo - change this to get the data from the API. send the api token to identify the user
      cartList = cartItems.map((item) => CartItemModel.fromJson(json.decode(item))).toList();

    
    }
  } catch (error) {
    print('Error loading cart: $error');
  }
  notifyListeners();
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

     // send the prod id quabbtity  to the server. Send with the api token

    notifyListeners();
    saveCart();
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
    saveCart();
    
  }

   void updateQuantity(int index, int quantity) {
    if (index >= 0 && index < cartList.length) {
      cartList[index].quantity = quantity.toString();
      cartList[index].totalPrice =
          double.parse(cartList[index].price) * quantity;
      notifyListeners();
       saveCart();
    }
  }


}
