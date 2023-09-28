import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:feshexpress/api/api_connection.dart';

class ItemModel extends ChangeNotifier {
  List<Item> _items = [];
  List<Item> get items => _items;
  String _currentCategory = "Vegetables";

  get currentCategory => _currentCategory;

  void setCurrentCategory(String category) {
    _currentCategory = category;
    loadItems();
    notifyListeners();
    print('After Notify : $_currentCategory');
  }

  ItemModel() {
    // loadItems();
  }

  Future<void> loadItems() async {
    try {
      final items = await ApiConnection.getProductsByCategoryName(_currentCategory);
      _items = items;
      notifyListeners();
    } catch (error) {
      print('Error loading items: $error');
      throw Exception('Error loading items: $error');
    }
  }
}

class Item {
  final int id;
  final String title;
  final String image;
  final double price;
  final String category;

  Item({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.category,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] as int,
      title: json['name'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
    );
  }
}
