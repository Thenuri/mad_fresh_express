import 'dart:convert';
import 'package:feshexpress/model/item_model.dart';
import 'package:http/http.dart' as http;

class ApiConnection {
  static Future<List<Item>> getProductsByCategoryName(String categoryName) async {
    try {
      final response = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/products/category/$categoryName'),
      );

      if (response.statusCode == 200) {
        if (response.body != null && response.body.isNotEmpty) {
          final jsonResponse = jsonDecode(response.body);
          print('API call succeeded');

          if (jsonResponse is Map<String, dynamic> &&
              jsonResponse.containsKey('products') &&
              jsonResponse['products'] is List) {
                print('Methana wada' + jsonResponse['products'].toString());
            return (jsonResponse['products'] as List)
                .map((item) => Item.fromJson(item))
                .toList();
          } else {
            print('Unexpected response structure: $jsonResponse');
            throw Exception('Unexpected response structure');
          }
        } else {
          print('Response body is empty');
          throw Exception('Response body is empty');
        }
      } else {
        print('API call failed with status code ${response.statusCode}');
        throw Exception('Failed to load items');
      }
    } catch (error) {
      print('Error fetching items: $error');
      throw Exception('Error fetching items: $error');
    }
  }
}
// E/flutter ( 5666): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: Exception: Error fetching items: type 'Null' is not a subtype of type 'String' in type cast
// E/flutter ( 5666): #0      ApiConnection.getProductsByCategoryName
// api_connection.dart:37
// E/flutter ( 5666): <asynchronous suspension>
// E/flutter ( 5666): #1      _categoryTilesState.fetchItems
// categorytiles.dart:42
// E/flutter ( 5666): <asynchronous suspension>
// E/flutter ( 5666):

// I/flutter ( 5666): Methana wada[{id: 1, name: carrot, price: 250, image: products/5FggcamfC7OBkX8WkpF2aZ6Bu19jKeWP159cvrow.png, category: Vegetables}, {id: 2, name: onion, price: 250, image: products/ONySExbhR7ELMs3G5bvqrhmZubDRQtxxc0Sl8dbD.png, category: Vegetables}, {id: 3, name: pumking , price: 250, image: products/gESRND3ANEKD05b7CC9u55NRiBCi3e3rdTFaCK3h.png, category: Vegetables}, {id: 4, name: tomato, price: 250, image: products/DhJ1cRBUOLLChsdixLgi9owSD5a5LrIb8AIhHm2N.png, category: Vegetables}]
// I/flutter ( 5666): Error fetching items: type 'Null' is not a subtype of type 'String' in type cast


// I/flutter ( 5666): Methana wada[{id: 1, name: carrot, price: 250, image: products/5FggcamfC7OBkX8WkpF2aZ6Bu19jKeWP159cvrow.png, category: Vegetables}, {id: 2, name: onion, price: 250, image: products/ONySExbhR7ELMs3G5bvqrhmZubDRQtxxc0Sl8dbD.png, category: Vegetables}, {id: 3, name: pumking , price: 250, image: products/gESRND3ANEKD05b7CC9u55NRiBCi3e3rdTFaCK3h.png, category: Vegetables}, {id: 4, name: tomato, price: 250, image: products/DhJ1cRBUOLLChsdixLgi9owSD5a5LrIb8AIhHm2N.png, category: Vegetables}]
// I/flutter ( 5666): Error fetching items: type 'int' is not a subtype of type 'double' in type cast


// I/flutter ( 5666): Methana wada[{id: 1, name: carrot, price: 250, image: products/5FggcamfC7OBkX8WkpF2aZ6Bu19jKeWP159cvrow.png, category: Vegetables}, {id: 2, name: onion, price: 250, image: products/ONySExbhR7ELMs3G5bvqrhmZubDRQtxxc0Sl8dbD.png, category: Vegetables}, {id: 3, name: pumking , price: 250, image: products/gESRND3ANEKD05b7CC9u55NRiBCi3e3rdTFaCK3h.png, category: Vegetables}, {id: 4, name: tomato, price: 250, image: products/DhJ1cRBUOLLChsdixLgi9owSD5a5LrIb8AIhHm2N.png, category: Vegetables}]
// I/flutter ( 5666): Error fetching items: type 'int' is not a subtype of type 'double'