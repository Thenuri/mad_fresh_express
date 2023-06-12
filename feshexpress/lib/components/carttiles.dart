// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

// class cartTiles extends StatefulWidget {
//   final String image;
//   final String title;
//   final String price;
//   const cartTiles({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.price,
//   }) : super(key: key);
//   @override
//   _cartTilesState createState() => _cartTilesState();
// }
// class _cartTilesState extends State<cartTiles> {
//   int counter = 0;
//   bool isFavorite = false;
//   void incrementCounter() {
//     setState(() {
//       counter++;
//     });
//   }
//   void decrementCounter() {
//     setState(() {
//       if (counter > 0) {
//         counter--;
//       }
//     });
//   }
//   void toggleFavorite() {
//     setState(() {
//       isFavorite = !isFavorite;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//      Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#3B3B3B") : Colors.white;
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         // color: Colors.white,
//         padding: EdgeInsets.all(5.0),
//         decoration: BoxDecoration(
//           color: navbar,
//           borderRadius: BorderRadius.circular(20.0),
//           border: Border.all(
//             color: HexColor("#848484"), // Set the border color here
//             width: 1.0,
//           ),
//         ),
//         child: Stack(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the items vertically
//               crossAxisAlignment: CrossAxisAlignment.center, 
           
//               children: [
//                 Image.asset(
//                   widget.image,
//                   width: 75.0,
//                   height: 57.0,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       widget.title,
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: HexColor("#000000"),
//                       ),
//                     ),
//                     Text(
//                       widget.price,
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: HexColor("#000000"),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(height: 5.0,),
//                 Column(
//                   children: [
//                     Container(
//                       height: 30.0,
//                       width: 110.0,
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 242, 240, 236),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           IconButton(
//                             iconSize: 20.0,
//                             padding: EdgeInsets.zero,
//                             icon: Icon(Icons.remove),
//                             onPressed: decrementCounter,
//                             color: Colors.black,
//                           ),
//                           // Adjust the spacing here
//                           Text(
//                             '$counter',
//                             style: TextStyle(fontSize: 15.0),
//                             // Adjust the font size of the counter value
//                           ),
//                           // Adjust the spacing here
//                           IconButton(
//                             iconSize: 20.0,
//                             padding: EdgeInsets.zero,
//                             icon: Icon(Icons.add),
//                             onPressed: incrementCounter,
//                             color: Colors.black,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CartTiles extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String total;
  final int count;
  final VoidCallback onDelete;
  final Function (int count)onCounterChanged;
  
  const CartTiles({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
    required this.total,
    required this.onDelete,
     required this.onCounterChanged,
  }) : super(key: key);

  @override
  _CartTilesState createState() => _CartTilesState();
}

 

class _CartTilesState extends State<CartTiles> {
  int counter = 0;
 
  bool isFavorite = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
     widget.onCounterChanged(counter);
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
     widget.onCounterChanged(counter);
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      counter = widget.count;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    double totalValue = double.parse(widget.price) * counter;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 35.0),
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: HexColor("#848484"),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    widget.image,
                    width: 120.0,
                    height: 99.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.title} - 100g',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'RS ${widget.price} - per 100g',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                      Text(
                        'Rs ${totalValue}0',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 25.0),
                  child: Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: HexColor("#848484"),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            incrementCounter();
                          },
                          child: Icon(
                            Icons.add,
                            size: 20.0,
                          ),
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            decrementCounter();
                          },
                          child: Icon(
                            Icons.remove,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 1.0,
            right: 30,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: HexColor("#0EC42B"),
              ),
              onPressed: widget.onDelete, // Call the onDelete callback
            ),
          ),
        ],
      ),
    );
  }
}
