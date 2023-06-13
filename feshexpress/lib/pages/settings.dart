import 'package:feshexpress/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth.dart';
import 'intro_page.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool status = false;
  final AuthProvider _authProvider = AuthProvider();

  @override
  Widget build(BuildContext context) {
    Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#4D4B4B");
    Color topicn = Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#4D4B4B");
    Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
    Color subtext = Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:24.0, top: 72.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: topic,
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back when the icon is tapped
                    },
                  ),
                  Padding(
                    padding: MediaQuery.of(context).orientation == Orientation.portrait
                        ? const EdgeInsets.only(left: 70.0)
                        : const EdgeInsets.only(left: 290.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: topic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 295,
                height: 150,
                decoration: BoxDecoration(
                  color: navbar,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: HexColor("#848484"),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    // First Column with phone icon and number
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, top: 20.0),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.moon,
                            color: HexColor("#0EC42B"),
                            size: 30,
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Dark Mode',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 70.0),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Second Column with email icon and address
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 20.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.logout,
                              color: HexColor("#0EC42B"),
                              size: 30.0,
                            ),
                            onPressed: () {
                              _logout(); // Call the logout method
                            },
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _logout() async {
    bool success = await _authProvider.logout(); // Call the logout method
    if (success) {
      // Logout successful, navigate to login or home screen
      // Replace 'LoginScreen' with the appropriate screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    } else {
      // Logout failed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Logout Failed'),
            content: Text('An error occurred while logging out.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
