import 'package:feshexpress/pages/Address.dart';
import 'package:feshexpress/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components/custom_navigation_bar1.dart';

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
                      color: HexColor("#4D4B4B"),
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
                        color: HexColor("#4D4B4B"),
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
                      color: HexColor("#000000"),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '1,000',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#000000"),
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
                      color: HexColor("#000000"),
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
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: HexColor("#848484")),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                  hintText: 'Enter Coupon Number',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: HexColor("#848484"),
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
                      color: Colors.black,
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
                          color: HexColor("#000000"),
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
                              color: HexColor("#000000"),
                            ),
                          ),
                          Text(
                            'Rs 500.00',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: HexColor("#000000"),
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
                          color: HexColor("#000000"),
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
                              color: HexColor("#000000"),
                            ),
                          ),
                          Text(
                            'Rs 500.00',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: HexColor("#000000"),
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
                      color: Colors.black,
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
                          color: HexColor("#000000"),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: HexColor("#000000"),
                            ),
                          ),
                          Text(
                            '1,000.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#000000"),
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
                          color: HexColor("#000000"),
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
                                color: HexColor("#000000"),
                              ),
                            ),
                          ),
                          Text(
                            '50.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#000000"),
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
                          color: HexColor("#000000"),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: HexColor("#000000"),
                            ),
                          ),
                          Text(
                            '1,050.00',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#000000"),
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
      bottomNavigationBar: CustomNavigationBarnew(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        // Add your bottom navigation bar configuration here
      ),
    );
  }
}
