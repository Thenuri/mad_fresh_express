import 'package:feshexpress/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home_page.dart';

class thankyouPage extends StatefulWidget {
  const thankyouPage({ Key? key }) : super(key: key);

  @override
  State<thankyouPage> createState() => _thankyouPageState();
} 


class _thankyouPageState extends State<thankyouPage> {
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
                          return const Payment();
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
                      'Thank You',
                      style: TextStyle(
                        fontSize:24.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#4D4B4B"),
                      ),
                    ),
                  ),  
                ],
              ),
            ),
            SizedBox(height: 59.0),
            Padding(
                  padding: const EdgeInsets.only(left:50.0,right: 50.0),
                  child: Text(
                    'Your Order has been placed!',
                  style: TextStyle(
                  fontSize:15.0,
                  color: HexColor("#0000"),
                ),
              ),
            ),
            SizedBox(height:20.0),
            Padding(
            padding: const EdgeInsets.only(left:10.0,right:20.0,top:80.0,bottom:100.0),
            child: Image.asset('lib/images/thanks.png',width: 350.0, height: 300.0,),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return const  HomePage();
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
                      Padding(
                        padding: const EdgeInsets.only(left:60.0),
                        child: Text(
                          "Back to Home",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Roboto',
                            color: HexColor("#FFFFFF"),
                          ),
                        ),
                      ),
                    
                  ],
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