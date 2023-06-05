import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomNavigationBarnew extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomNavigationBarnew({required this.selectedIndex, required this.onItemTapped});

  @override
  _CustomNavigationBarnewState createState() => _CustomNavigationBarnewState();
}

class _CustomNavigationBarnewState extends State<CustomNavigationBarnew> {
  // final List<Color> _bgColors = [
  //   HexColor("#15CE1F"),
  //   HexColor("#13B662"),
  //   HexColor("#119DA4"),
  //   HexColor("#19647E"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: GNav(
          // selectedIndex: widget.selectedIndex,
          iconSize: 30.0,
          gap: 8.0,
          textSize: 18.0,
          backgroundColor: Colors.white,
          // tabBackgroundColor: _bgColors[widget.selectedIndex],
          // activeColor: Colors.white,
          padding: EdgeInsets.all(16.0),
          tabs: [                  
            GButton(
              icon: Icons.home_outlined,
              iconColor: HexColor("#15CE1F"),
              iconActiveColor: HexColor("#15CE1F"),
              // onPressed: () {
              //   widget.onItemTapped(0);
              // },
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              iconColor: HexColor("#13B662"),
              iconActiveColor: HexColor("#13B662"),
              // onPressed: () {
              //   widget.onItemTapped(1);
              // },
            ),
            GButton(
              icon: Icons.chat_bubble_outline_rounded,
              iconColor: HexColor("#119DA4"),
              iconActiveColor: HexColor("#119DA4"),
              // onPressed: () {
              //   widget.onItemTapped(2);
              // },
            ),
            GButton(
              icon: Icons.favorite_outline,
              iconColor: HexColor("#19647E"),
              iconActiveColor: HexColor("#19647E"),
              // onPressed: () {
              //   widget.onItemTapped(3);
              // },
            ),
          ],
        ),
      ),
    );
  }
}
