import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_page.dart';



class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sentence = 'We deliver fresh items to your doorstep';
    int breakIndex = 10;
    int breakIndex1 = 30; // the index where we want to break the sentence
    String firstPart = sentence.substring(0, breakIndex);
    String secondPart = sentence.substring(breakIndex, breakIndex1);
    String thirdPart = sentence.substring(breakIndex1);
    return  Scaffold(
      body:Column(
        children:[
          // logo
         Padding(
          padding:const EdgeInsets.only(left:20.0,right:20.0,top:150.0,bottom:100.0),
          child: Image.asset('lib/images/logo1.png',width: 400.0, height: 204.11,),
          ),

          //text
          Padding(
          padding:const EdgeInsets.all(24.0),
          child:Column(
            children: [
              Text(
                firstPart,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color:HexColor("#565555"))),
              Text(secondPart,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color:HexColor("#565555"))),
                Text(thirdPart,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color:HexColor("#565555"))),
            ],

          ),
           
          ),
           //Text(
            //firstPart,
           // textAlign: TextAlign.center,
            //style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color:HexColor("#565555"))),
           

           const Spacer(),
          //get started button
             GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return const  LoginPage();
                },
              ),
            ),
            child: Container(
              //margin:  EdgeInsets.fromLTRB(50*fem, 0*fem, 50*fem, 0*fem),
              width:  250.0,
              height:  70.0,
              decoration: BoxDecoration(
                color: HexColor("#0EC42B"),
                borderRadius: BorderRadius.circular(5.0),
              ),
                padding: const EdgeInsets.all(19),
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,fontFamily: 'Roboto',color:HexColor("#FFFFFF"))	
                       
                ),
              ),
             ),
          
          const Spacer(),
        ],
      )
    );
  }
}