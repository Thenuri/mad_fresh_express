import 'package:feshexpress/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

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

          Center(
            child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
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
                  'lib/images/mango.png',
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
                      'Mango - 100g',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Rs 250 per 100g',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: HexColor("#848484"),
                      ),
                    ),
                   
                    Text(
                      'Rs 500',
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
                padding: const EdgeInsets.only(right:30.0,top: 25.0),
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
                          // Add your logic for the plus button here
                        },
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                        ),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Add your logic for the minus button here
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
                  right: 0.75,
                  child: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Add your logic for the close button here
            },
                  ),
                ),
              ],
            ),
          ),
          ),
 
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