// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:provider/provider.dart';


// import '../components/custom_navigation_bar1.dart';
// import '../components/itemtiles.dart';
// import '../model/item_model.dart';
// import 'cart_page.dart';
// import 'chat_page.dart';
// import 'favorite_page.dart';
// import 'home_page.dart';

// class ItemPage extends StatefulWidget {
//   const ItemPage({Key? key}) : super(key: key);

//   @override
//   State<ItemPage> createState() => _ItemPageState();
// }

// class _ItemPageState extends State<ItemPage> {
 
//   int _selectedIndex=0;
//   void _onItemTapped(int index){
//     setState(() {
//       _selectedIndex=index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//      Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.0),
//                   border: Border.all(
//                     color: HexColor("#0EC42B"), // Set the border color here
//                     width: 1.0,
//                   ),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(vertical: 20.0),
//                     hintText: 'Search',
//                     prefixIcon: const Icon(
//                       Icons.search,
//                       size: 30.0,
//                       color: Colors.white,
//                     ),
//                     suffixIcon: IconButton(
//                       icon: const Icon(
//                         Icons.search,
//                         size: 30.0,
//                       ),
//                       onPressed: () {},
//                     ),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Consumer<ItemModel>(
//                 builder: (context, value, child) {
//                   return GridView.builder(
//                     itemCount: value.items.length,
//                     padding: EdgeInsets.all(20.0),
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 138/198,
//                     ),
//                     itemBuilder: (context, index) {

//                       var x = value.items[index][0];	
//                       print(x['image']);
//                       return ItemTiles(
//                         image: value.items[index][index]['image'],
//                         title: value.items[index][index]['title'],
//                         price: value.items[index][index]['price'], 
//                         // onCategorySelected: (String ) {  },
              
                   
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color:navbar,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//           child: GNav(
//             // selectedIndex: _selectedIndex,
//             iconSize: 30.0,
//             gap: 8.0,
//             textSize: 18.0,
//             // backgroundColor: Colors.white,
//             // tabBackgroundColor: _bgColors[_selectedIndex],
//             // activeColor: Colors.white,
//             padding: EdgeInsets.all(16.0),
//             tabs: [
//               GButton(
//                 icon: Icons.home_outlined,
               
//                 iconColor: HexColor("#15CE1F"),
//                 iconActiveColor: HexColor("#15CE1F"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 0;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.shopping_cart_outlined,
               
//                 iconColor: HexColor("#13B662"),
//                  iconActiveColor: HexColor("#13B662"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 1;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => cartPage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.chat_bubble_outline_rounded,
                
//                 iconColor: HexColor("#119DA4"),
//                 iconActiveColor: HexColor("#119DA4"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 2;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => chatPage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.favorite_outline,
                
//                 iconColor: HexColor("#19647E"),
//                 iconActiveColor: HexColor("#19647E"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 3;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => favPage()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






// class _ItemPageState extends State<ItemPage> {
//    int _selectedIndex=0;
//   void _onItemTapped(int index){
//     setState(() {
//       _selectedIndex=index;
//     });
//   }
//   late ItemModel _itemModel;

//   @override
//   void initState() {
//     super.initState();
//     _itemModel = ItemModel();
//     _itemModel.loadItems();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.0),
//                   border: Border.all(
//                     color: HexColor("#0EC42B"), // Set the border color here
//                     width: 1.0,
//                   ),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(vertical: 20.0),
//                     hintText: 'Search',
//                     prefixIcon: const Icon(
//                       Icons.search,
//                       size: 30.0,
//                       color: Colors.white,
//                     ),
//                     suffixIcon: IconButton(
//                       icon: const Icon(
//                         Icons.search,
//                         size: 30.0,
//                       ),
//                       onPressed: () {},
//                     ),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),

//             Expanded(
//               child: FutureBuilder(
//                 future: _itemModel.loadItems(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     return GridView.builder(
//                       itemCount: _itemModel.items.length,
//                       padding: EdgeInsets.all(20.0),
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         childAspectRatio: 138 / 198,
//                       ),
//                       itemBuilder: (context, index) {
//                         final item = _itemModel.items[index];
//                         return ItemTiles(
//                           image: item.image,
//                           title: item.title,
//                           price: item.price,
//                         );
//                       },
//                     );
//                   } else {
//                     return CircularProgressIndicator();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//        bottomNavigationBar: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//           child: GNav(
//             // selectedIndex: _selectedIndex,
//             iconSize: 30.0,
//             gap: 8.0,
//             textSize: 18.0,
//             backgroundColor: Colors.white,
//             // tabBackgroundColor: _bgColors[_selectedIndex],
//             // activeColor: Colors.white,
//             padding: EdgeInsets.all(16.0),
//             tabs: [
//               GButton(
//                 icon: Icons.home_outlined,
               
//                 iconColor: HexColor("#15CE1F"),
//                 iconActiveColor: HexColor("#15CE1F"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 0;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.shopping_cart_outlined,
               
//                 iconColor: HexColor("#13B662"),
//                  iconActiveColor: HexColor("#13B662"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 1;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => cartPage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.chat_bubble_outline_rounded,
                
//                 iconColor: HexColor("#119DA4"),
//                 iconActiveColor: HexColor("#119DA4"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 2;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => chatPage()),
//                   );
//                 },
//               ),
//               GButton(
//                 icon: Icons.favorite_outline,
                
//                 iconColor: HexColor("#19647E"),
//                 iconActiveColor: HexColor("#19647E"),
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 3;
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => favPage()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';


import '../components/custom_navigation_bar1.dart';
import '../components/itemtiles.dart';
import '../model/categoary_model.dart';
import '../model/item_model.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';
import 'home_page.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  Future? _loadAllPrefs;
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  void initState() {
    var itemModel= Provider.of<ItemModel>(context,listen: false);
     _loadAllPrefs = itemModel.loadItems();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

     Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: HexColor("#0EC42B"), // Set the border color here
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      hintText: 'Search',
                      
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
      Expanded(
        child: Consumer<ItemModel>(
          builder: (context, value, child) {
            return GridView.builder(
              itemCount: value.items.length,
              padding: EdgeInsets.all(20.0),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                childAspectRatio: 138/198,
              ),
              itemBuilder: (context, index) {

                var x = value.items[index][0];
                print(x['image']);
                return ItemTiles(
                  image: value.items[index][index]['image'],
                  title: value.items[index][index]['title'],
                  price: value.items[index][index]['price'],
                  // onCategorySelected: (String ) {  },
                );
              },
            );
          },
        ),
      ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color:navbar,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            // selectedIndex: _selectedIndex,
            iconSize: 30.0,
            gap: 8.0,
            textSize: 18.0,
            // backgroundColor: Colors.white,
            // tabBackgroundColor: _bgColors[_selectedIndex],
            // activeColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
               
                iconColor: HexColor("#15CE1F"),
                iconActiveColor: HexColor("#15CE1F"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
               
                iconColor: HexColor("#13B662"),
                 iconActiveColor: HexColor("#13B662"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cartPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.chat_bubble_outline_rounded,
                
                iconColor: HexColor("#119DA4"),
                iconActiveColor: HexColor("#119DA4"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chatPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite_outline,
                
                iconColor: HexColor("#19647E"),
                iconActiveColor: HexColor("#19647E"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => favPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


