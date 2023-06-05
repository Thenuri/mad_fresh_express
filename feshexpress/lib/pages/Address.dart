import 'package:feshexpress/pages/location.dart';
import 'package:feshexpress/pages/preview.dart';
import 'package:feshexpress/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components/custom_navigation_bar1.dart';
import 'cart_page.dart';
import 'home_page.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String deliveryType = ''; // Selected delivery type
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
              padding: EdgeInsets.only(left: 45.0, right: 40.0, top: 93.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const cartPage();
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
                      'Address',
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
              padding: EdgeInsets.only(left: 5, right: 240.0, top: 74.0),
              child: Text(
                'Delivery',
                style: TextStyle(fontSize: 17.0, color: HexColor("#00000")),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'City',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'Zip Code',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 15.0, color: HexColor("#00000")),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.location_on,
                            color: HexColor("#0000"),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 12.0, top: -6.0),
                              hintText: 'Pick Location',
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: HexColor("#848484"),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Location();
                              },
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.edit_location,
                              color: HexColor("#0000"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 240.0),
                    child: Text(
                      'Delivery Type',
                      style: TextStyle(fontSize: 17.0, color: HexColor("#00000")),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:45.0),
                        child: RadioListTile(
                          activeColor: HexColor("#0EC42B"),
                          title: Text('Urgent Delivery'),
                          value: 'Urgent Delivery',
                          groupValue: deliveryType,
                          onChanged: (value) {
                            setState(() {
                              deliveryType = value.toString();
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:45.0,bottom:45.0),
                        child: RadioListTile(
                          activeColor: HexColor("#0EC42B"),
                          title: Text('Normal Delivery'),
                          value: 'Express',
                          groupValue: deliveryType,
                          onChanged: (value) {
                            setState(() {
                              deliveryType = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Preview();
                      },
                    ),
                  ),
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
                        "Preview",
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
                ],
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
