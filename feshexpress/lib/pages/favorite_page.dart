import 'package:feshexpress/model/favourite_provider.dart';
import 'package:feshexpress/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../components/itemtiles.dart';
import '../model/favorite_provider.dart';
import 'chat_page.dart';
import 'home_page.dart';


class favPage extends StatefulWidget {
  const favPage({ Key? key }) : super(key: key);

  @override
  State<favPage> createState() => _favPageState();
}

class _favPageState extends State<favPage> {
    int _selectedIndex = 3;
  final List<Color> _bgColors = [
    HexColor("#15CE1F"),
    HexColor("#13B662"),
    HexColor("#119DA4"),
    HexColor("#19647E"),
  ];
  final List<Widget> _pages = [
    cartPage(),
    cartPage(),
    favPage(),
  ];
  @override
  Widget build(BuildContext context) {
      Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#4D4B4B");
        Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(left:30,right:20.0,top:93.0,bottom:20.0),
            child: Text('Favorite',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color:topic)),
          ), 
          Container(
            child: Expanded(
              child: Consumer<FavouriteModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.favouriteList.length,
                    padding: EdgeInsets.all(20.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                      childAspectRatio: 138/198,
                    ),
                    itemBuilder: (context, index) {

                      var x = value.favouriteList[index];
                      return ItemTiles(
                        image: x.image,
                        title: x.name,
                        price: x.price,
                        // onCategorySelected: (String ) {  },
                      );
                    },
                  );
                },
              ),
            ),
          )
 
        ],
        
      ),
       bottomNavigationBar: Container(
        color:  navbar,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            selectedIndex: _selectedIndex,
            iconSize: 30.0,
            gap: 8.0,
            textSize: 18.0,
            // backgroundColor: Colors.white,
            tabBackgroundColor: _bgColors[_selectedIndex],
            activeColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                iconColor: HexColor("#15CE1F"),
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
                text: 'Cart',
                iconColor: HexColor("#13B662"),
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
                text: 'Chat',
                iconColor: HexColor("#119DA4"),
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
                text: 'Favorites',
                iconColor: HexColor("#19647E"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  
                },
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}