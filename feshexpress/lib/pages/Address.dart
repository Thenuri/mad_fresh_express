import 'dart:math';

import 'package:feshexpress/pages/location.dart';
import 'package:feshexpress/pages/preview.dart';
import 'package:feshexpress/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:geolocator/geolocator.dart';

import '../components/custom_navigation_bar1.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';
import 'home_page.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String deliveryType = ''; // Selected delivery type
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Position? _position;
  TextEditingController _addressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();

  @override
  void dispose() {
    _addressController.dispose();
    _cityController.dispose();
    _zipCodeController.dispose();
    super.dispose();
  }
void _getLocation() async {
  Position? position = await _determinePosition();
  if (position != null) {
    setState(() {
      _position = position;
    });
    print(position);
  } else {
    // Handle the case when the position is null (permission denied or not available)
    // For example, you can show an error message or perform alternative logic.
    print('Unable to get the current position.');
  }
}

  Future<Position?> _determinePosition() async {
  LocationPermission permission;

  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return null; // Return null instead of throwing an error
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return null; // Return null instead of throwing an error
  }
  if (permission == LocationPermission.whileInUse ||
      permission == LocationPermission.always) {
    return await Geolocator.getCurrentPosition();
  }
  return null; // Return null instead of throwing an error
}


  @override
  Widget build(BuildContext context) {
    Color navbar =
        Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
    Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#575353");
    Color icon = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#000000");
    Color subtext = Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");

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
                      color: topic,
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
                        color: topic,
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
                style: TextStyle(fontSize: 17.0,),
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
                      color: navbar,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      controller: _addressController, // Bind the controller
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: subtext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: navbar,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      controller: _cityController, // Bind the controller
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'City',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: subtext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: navbar,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      controller: _zipCodeController, // Bind the controller
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'Zip Code',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: subtext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 15.0,),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    children: [
                      Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: navbar,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: HexColor("#848484")),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.location_on,
                                color: icon,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                _position != null ? 'Current Location: ' + _position.toString() : 'No data',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: subtext,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: GestureDetector(
                                onTap: _getLocation,
                                child: Icon(
                                  Icons.edit_location,
                                  color: icon,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      // Additional widgets...
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 240.0),
                    child: Text(
                      'Delivery Type',
                      style: TextStyle(fontSize: 17.0,),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
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
                        padding: const EdgeInsets.only(left: 45.0, bottom: 45.0),
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
                    onTap: () {
                      _saveAddress(); // Call the function to save address
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Preview();
                          },
                        ),
                      );
                    },
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
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 120.0), // Add a space of 5.0 between the text and the icon
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: HexColor("#FFFFFF"),
                            size: 25.0,
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
                  icon: Icons.favorite_border_rounded,
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

  void _saveAddress() {
    // Get the address data from the text fields
    String address = _addressController.text;
    String city = _cityController.text;
    String zipCode = _zipCodeController.text;

    // Save the address to the desired location (e.g., database, local storage, etc.)
    // Example:
    // SomeService.saveAddress(address, city, zipCode);

    // You can also access the selected delivery type using the "deliveryType" variable

    // Print the address data for verification
    print('Address: $address');
    print('City: $city');
    print('Zip Code: $zipCode');
    print('Delivery Type: $deliveryType');
  }
}
