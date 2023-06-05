import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../pages/Item_page.dart';


class categoryTiles extends StatelessWidget{
  final String image;
  final String title;
  final color;
  
  const categoryTiles({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    
    });

  @override
   Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ItemPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color,
            //padding: EdgeInsets.all(12.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                image,
                width: 250.0,
                height: 104.0,
              ),
            Text(title,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color:HexColor("#00000"))),
          ]),
        ),
      ),
    );
   }

}