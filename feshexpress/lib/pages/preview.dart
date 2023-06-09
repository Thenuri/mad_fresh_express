import 'package:feshexpress/pages/Address.dart';
import 'package:feshexpress/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components/custom_navigation_bar1.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';
import 'home_page.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
     Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
            Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#575353");
            Color icon = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#000000");
             Color subtext= Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45.0, right: 40.0, top: 74.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Address();
                        },
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: topic,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text(
                      'Preview',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: topic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0, right: 55.0, top: 74.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available Points',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '1,000',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Redeem Points'),
                            content: Text('Do you want to redeem your points?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the pop-up
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Perform redeeming logic
                                  Navigator.of(context).pop(); // Close the pop-up
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(HexColor("#0EC42B")),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 256.0,
                      height: 40.0,
                      padding: const EdgeInsets.only(top: 8.0),
                      child: const Text(
                        "Redeem",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coupon',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                     
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 275.0,
              height: 50.0,
              decoration: BoxDecoration(
                color:  navbar ,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: HexColor("#848484")),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                  hintText: 'Enter Coupon Number',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: subtext,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.0),
                  child: Container(
                    height: 2.0,
                    child: const Divider(
                     
                    ),
                  ),
                ),
                const SizedBox(height: 9.0),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blubbery-100g',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Text(
                        'Rs 250 per 100g',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Qfy 2',
                            style: TextStyle(
                              fontSize: 14.0,
                             
                            ),
                          ),
                          Text(
                            'Rs 500.00',
                            style: TextStyle(
                              fontSize: 14.0,
                              
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:10.0),
                      Text(
                        'Blubbery-100g',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Text(
                        'Rs 250 per 100g',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Qfy 2',
                            style: TextStyle(
                              fontSize: 14.0,
                             
                            ),
                          ),
                          Text(
                            'Rs 500.00',
                            style: TextStyle(
                              fontSize: 14.0,
                            
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.0),
                  child: Container(
                    height: 2.0,
                    child: const Divider(
                      
                    ),
                  ),
                ),
                const SizedBox(height: 9.0),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs ',
                            style: TextStyle(
                              fontSize: 16.0,
                             
                            ),
                          ),
                          Text(
                            '1,000.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                             
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 27.0),
                            child: Text(
                              'Rs ',
                              style: TextStyle(
                                fontSize: 16.0,
                              
                              ),
                            ),
                          ),
                          Text(
                            '50.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                             
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs ',
                            style: TextStyle(
                              fontSize: 16.0,
                             
                            ),
                          ),
                          Text(
                            '1,050.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return const  Payment();
                },
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom:25.0),
              child: Container(
                  width: 275.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: HexColor("#0EC42B"),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Text(
                        "Payment",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Roboto',
                          color: HexColor("#FFFFFF"),
                        ),
                      ),
                    SizedBox(width:120.0), // Add a space of 5.0 between the text and the icon
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: HexColor("#FFFFFF"),
                      size:25.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: navbar,
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
