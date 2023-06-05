import 'package:feshexpress/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Text('Sign Up',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color:HexColor("#565555"))),
            ),
            SizedBox(height: 47.0,),
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
                        hintText:'User Name',
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
                        hintText:'Password',
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
                        hintText:'Confirm Password',
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
                        hintText:'Contact Number',
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
                        hintText:'Address',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context){
                        return const  HomePage();
                      },
                      ),),
                    child: Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor("#0EC42B"),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#FFFFFF"))        
                      ),  
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Have an account?",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#00000"))),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context){
                        return const  LoginPage();
                      },
                    ),
                  ),
                  child: Container(
                    width: 280.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color:HexColor("#0EC42B")),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#0EC42B"))        
                      ),
                    ),
                  ),
                 Image.asset('lib/images/Signup.png',width: 350.0, height: 250.0,),  
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }
}