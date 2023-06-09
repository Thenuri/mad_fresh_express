import 'package:feshexpress/config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class DrawerPage extends StatefulWidget {
  final VoidCallback onCloseDrawer;

  const DrawerPage({Key? key, required this.onCloseDrawer}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0EC42B"),
      body: SafeArea(
        child: Column(
          children: [
            // Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 340.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    iconSize: 30.0,
                    onPressed: widget.onCloseDrawer,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            // Drawer Items
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: drawerItems.map((element) => GestureDetector(
                  onTap: () {
                    // Navigate to the respective page based on the tapped item
                    switch (element['title']) {
                      case 'Profile':
                        Navigator.pushNamed(context, '/profile');
                        break;
                      case 'Purchase History':
                        Navigator.pushNamed(context, '/purchase-history');
                        break;
                      case 'Contact Us':
                        Navigator.pushNamed(context, '/contact-us');
                        break;
                      case 'Settings':
                        Navigator.pushNamed(context, '/settings');
                        break;
                      case 'Promotions':
                        Navigator.pushNamed(context, '/promotions');
                        break;
                      default:
                        break;
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(element['icon'], color: Colors.white, size: 30,),
                        SizedBox(width: 10.0),
                        Text(
                          element['title'],
                          style: const TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )).toList(),
              ),
            ),
            // Image
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 240.0, bottom: 190.0),
                child: FractionallySizedBox(
                  heightFactor: 5, // Adjust the height factor as needed (between 0.0 and 1.0)
                  child: Image.asset(
                    'lib/images/Rectangle 71.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}