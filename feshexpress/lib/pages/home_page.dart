import 'package:feshexpress/components/custom_navigation_bar.dart';
import 'package:feshexpress/model/categoary_model.dart';
import 'package:feshexpress/pages/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../auth.dart';
import '../components/categorytiles.dart';
import '../model/item_model.dart';
import 'Item_page.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthProvider _authProvider = AuthProvider();


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
        xOffset = MediaQuery.of(context).orientation == Orientation.portrait ? 280 :630;
        yOffset = MediaQuery.of(context).orientation == Orientation.portrait ? 270 :50;
        scaleFactor =MediaQuery.of(context).orientation == Orientation.portrait ? 0.6:1;
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
                    child: FutureBuilder<String?>(
                      future: _authProvider.getUsername(),
                      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator(); // Show a loading indicator while retrieving the username
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final username = snapshot.data ?? ''; // Retrieve the username from the snapshot
                          return Text(
                            'Hi, $username!',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: TextColor,
                            ),
                          );
                        }
                      },
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
                SizedBox(
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                          ? 54
                          : 5,
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
                  child: Consumer<CategoryModel >(
                    builder: (context, value, child) {
                      return GridView.builder(
                        itemCount: value.categories.length,
                        padding: const EdgeInsets.all(12.0),
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                          childAspectRatio: 4 / 5,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ItemPage(title: value.categories[index][1]),
                                ),
                              );
                            },
                            child: categoryTiles(
                              image: value.categories[index][0],
                              title: value.categories[index][1],
                              color: const Color(0xFF95FF9A),

                            ),
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
                      MaterialPageRoute(builder: (context) => const cartPage()),
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
