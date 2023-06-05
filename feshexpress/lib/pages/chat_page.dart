import 'package:feshexpress/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'favorite_page.dart';
import 'home_page.dart';


class chatPage extends StatefulWidget {
  const chatPage({ Key? key }) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
   int _selectedIndex = 2;
  final List<Color> _bgColors = [
    HexColor("#15CE1F"),
    HexColor("#13B662"),
    HexColor("#119DA4"),
    HexColor("#19647E"),
  ];
  final List<Widget> _pages = [
    HomePage(),
    cartPage(),
    favPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(left:150.0,right:20.0,top:93.0,bottom:100.0),
            child: Text('Chat',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color:HexColor("#4D4B4B"))),
          ),  
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            selectedIndex: _selectedIndex,
            iconSize: 30.0,
            gap: 8.0,
            textSize: 18.0,
            backgroundColor: Colors.white,
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