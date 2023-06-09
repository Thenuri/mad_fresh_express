import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import '../pages/Item_page.dart';

class ItemTiles extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  const ItemTiles({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);
  @override
  _ItemTilesState createState() => _ItemTilesState();
}
class _ItemTilesState extends State<ItemTiles> {
  int counter = 0;
  bool isFavorite = false;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }
  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(17.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: HexColor("#848484"), // Set the border color here
            width: 1.0,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the items vertically
              crossAxisAlignment: CrossAxisAlignment.center, 
           
              children: [
                Image.asset(
                  widget.image,
                  width: 75.0,
                  height: 57.0,
                ),
                Text(
                 widget.title ,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#000000"),
                  ),
                ),
                Text(
                  '100g-Rs.${widget.price}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#000000"),
                  ),
                ),
              SizedBox(height: 5.0,),
                Container(
                  height: 30.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 242, 240, 236),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 20.0,
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.remove),
                        onPressed: decrementCounter,
                        color: Colors.black,
                      ),
                      // Adjust the spacing here
                      Text(
                        '$counter',
                        style: TextStyle(fontSize: 15.0),
                        // Adjust the font size of the counter value
                      ),
                      // Adjust the spacing here
                      IconButton(
                        iconSize: 20.0,
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.add),
                        onPressed: incrementCounter,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height:5.0,),
                Container(
                  height:40.0,
                  width:110.0,
                  decoration: BoxDecoration(
                    color: HexColor("#0EC42B"),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Handle buy button press
                    },
                    child: const Text(
                      'Buy',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -15.0,
              left: -14.0,
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? const Color(0xFF710005) :  const Color(0xFF710005),
                ),
                onPressed: toggleFavorite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}