import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FavouriteItemModel {
  String name;
  String image;
  String price;

  FavouriteItemModel({
    required this.name,
    required this.image,
    required this.price,
  });

  factory FavouriteItemModel.fromJson(Map<String, dynamic> json) => FavouriteItemModel(
    name: json['name'],
    image: json['image'],
    price: json['price'],
  );

  @override
  String toString() {
    return "favouriteItemModel(name: $name, image: $image, price: $price)";
  }
}


class FavouriteModel extends ChangeNotifier {

  List<FavouriteItemModel> favouriteList = [];

  List<FavouriteItemModel> get getFavouriteList {
    return favouriteList;
  }
  void addFavouritesItems({
    required String name,
    required String image,
    required String price,
  }) {
    favouriteList.add(FavouriteItemModel(
      name: name,
      image: image,
      price: price,
    ));
    notifyListeners();
    print(favouriteList);

  }

}