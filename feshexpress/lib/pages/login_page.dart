import 'package:feshexpress/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: Column(
        children: [
          //login image
          Padding(
            padding: const EdgeInsets.only(left:10.0,right:20.0,top:80.0,bottom:100.0),
            child: Image.asset('lib/images/Login.png',width: 350.0, height: 250.0,),
          ),  
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Text('Login',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color:HexColor("#565555"))),
          ),
         
          Center(
            child: Column(
              children:[
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
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#FFFFFF"))        
                    ),
                    
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("Don't have an account?",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#00000"))),
                SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context){
                      return const  SignupPage();
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
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color:HexColor("#0EC42B"))        
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