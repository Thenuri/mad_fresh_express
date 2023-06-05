// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:hexcolor/hexcolor.dart';

// class CustomNavigationBar extends StatefulWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;

//   CustomNavigationBar({required this.selectedIndex, required this.onItemTapped});

//   @override
//   _CustomNavigationBarState createState() => _CustomNavigationBarState();
// }

// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   final List<Color> _bgColors = [
//     HexColor("#15CE1F"),
//     HexColor("#13B662"),
//     HexColor("#119DA4"),
//     HexColor("#19647E"),
//   ];

//   final List<String> _routes = [
//     '/main',
//     '/cart',
//     '/chat',
//     '/favorites',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//         child: GNav(
//           selectedIndex: widget.selectedIndex,
//           iconSize: 30.0,
//           gap: 8.0,
//           textSize: 18.0,
//           backgroundColor: Colors.white,
//           tabBackgroundColor: _bgColors[widget.selectedIndex],
//           activeColor: Colors.white,
//           padding: EdgeInsets.all(16.0),
//           tabs: [
//             GButton(
//               icon: Icons.home_outlined,
//               text: 'Home',
//               iconColor: HexColor("#15CE1F"),
//               onPressed: () {
//                 navigateTo(0);
//               },
//             ),
//             GButton(
//               icon: Icons.shopping_cart_outlined,
//               text: 'Cart',
//               iconColor: HexColor("#13B662"),
//               onPressed: () {
//                 navigateTo(1);
//               },
//             ),
//             GButton(
//               icon: Icons.chat_bubble_outline_rounded,
//               text: 'Chat',
//               iconColor: HexColor("#119DA4"),
//               onPressed: () {
//                 navigateTo(2);
//               },
//             ),
//             GButton(
//               icon: Icons.favorite_outline,
//               text: 'Favorites',
//               iconColor: HexColor("#19647E"),
//               onPressed: () {
//                 navigateTo(3);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // void navigateTo(int index) {
//   //   Navigator.pushNamed(context, _routes[index]);
//   //   widget.onItemTapped(index);
//   // }
// }
