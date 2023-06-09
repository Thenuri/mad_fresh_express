import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class contactus extends StatefulWidget {
  const contactus({ Key? key }) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
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
                    padding: const EdgeInsets.only(left:60.0),
                    child: Text(
                      'Contact Us',
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
                            Icons.phone,
                            color: HexColor("#0EC42B"),
                            size: 30,
                          ),
                         SizedBox(width: 16.0),
                          Text(
                            '123-456-7890',
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
            ),
            SizedBox(height: 46.0),
            Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 10.0),
                    child: Text(
                      'Feedback-Complain Form',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#4D4B4B"),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Center(
              child: Column(
                children: [
                  Container(
                    width: 280.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color:HexColor("#848484")),
                    ),
                    child:TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                        hintText:'Name',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: 280.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color:HexColor("#848484")),
                    ),
                    child:TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                        hintText:'Email',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: 280.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color:HexColor("#848484")),
                    ),
                    child:TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                        hintText:'Event Occured on',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: 280.0,
                    height: 141.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color:HexColor("#848484")),
                    ),
                    child:TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                        hintText:'Complain or Feedback',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
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
          ],
        ),
      ),
    );
  }
}