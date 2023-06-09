import 'package:feshexpress/components/custom_navigation_bar.dart';
import 'package:feshexpress/model/categoary_model.dart';
import 'package:feshexpress/pages/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../components/categorytiles.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Color> _bgColors = [
    HexColor("#15CE1F"),
    HexColor("#13B662"),
    HexColor("#119DA4"),
    HexColor("#19647E"),
  ];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  void toggleMenu() {
    setState(() {
      if (xOffset == 0 && yOffset == 0) {
        xOffset = 280;
        yOffset = 270;
        scaleFactor = 0.6;
      } else {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
      }
    });
  }

  void toggleDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color TextColor = Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#575353");
    Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#3B3B3B") : Colors.white;
    return Scaffold(
      body: Stack(
        children: [
          DrawerPage(onCloseDrawer: toggleDrawer),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(xOffset == 0 && yOffset == 0 ? 0 : 20),
              // theme bg color
              color: Theme.of(context).colorScheme.background,

              // color: Colors.whit,
            ),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: TextColor,
                    ),
                    iconSize: 35.0,
                    onPressed: toggleMenu,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Text(
                    "Hi!",
                    style: TextStyle(fontSize: 32.0,
                    // if theme is dark then text color is white else black
                      color: TextColor,
                      // color: Theme.of(context).colorScheme.onBackground,
                    
                    //  ,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Text(
                    "Get fresh and good items delivered to your doorstep",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color:TextColor,),
                  ),
                ),
                const SizedBox(
                  height: 54.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color:TextColor,),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Consumer<CategoaryModel>(
                    builder: (context, value, child) {
                      return GridView.builder(
                        itemCount: value.catogaries.length,
                        padding: const EdgeInsets.all(12.0),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 4 / 5,
                        ),
                        itemBuilder: (context, index) {
                          return categoryTiles(
                            image: value.catogaries[index][0],
                            title: value.catogaries[index][1],
                            color: value.catogaries[index][2],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: xOffset == 0 && yOffset == 0,
        child: Container(
           color: navbar,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: GNav(
              selectedIndex: _selectedIndex,
              iconSize: 30.0,
              gap: 8.0,
              textSize: 18.0,
              // backgroundColor: Color.fromARGB(255, 199, 77, 77),
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
      ),
    );
  }
}
