import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class settings extends StatefulWidget {
  const settings({ Key? key }) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:24.0, top: 72.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      Navigator.pop(context); // Go back when the icon is tapped
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:70.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#4D4B4B"),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),  
             Padding(
              padding: const EdgeInsets.only(top: 20.0,),
              child: Container(
                width: 295,
                height: 120,
                decoration: BoxDecoration(
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
                      padding: const EdgeInsets.only(left:22.0 , top:20.0),
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
                              color: HexColor("#0000"),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Second Column with email icon and address
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: HexColor("#0EC42B"),
                            size: 30,
                          ),
                         SizedBox(width: 16.0),
                          Text(
                            'info@fresgexpress.com',
                            style: TextStyle(
                              color: HexColor("#0000"),
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
}