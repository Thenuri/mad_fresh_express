import 'package:feshexpress/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../auth.dart';
import 'home_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String _ConfirmPassword = '';
  String _phone = '';
  String _address = '';
  String _errorMessage = '';
  String _dob = '';


  Future<void> _submitForm() async {
  setState(() {
    _errorMessage = '';
  });

  bool result = await Provider.of<AuthProvider>(context, listen: false).register(
    _name,
    _email,
    _password,
    _ConfirmPassword,
    _phone,
    _address,
    _dob,
    
  );

  if (result == false) {
    setState(() {
      _errorMessage = 'You are already registered';
    });
  }

  if (result == true) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

  @override
  Widget build(BuildContext context) {
     Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
       Color TextColor = Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#565555");
     Color SubTextColor = Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#848484");
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:80.0),
                child: Text('Sign Up',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color:TextColor)),
              ),
              SizedBox(height: 47.0,),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Name',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onSaved: (value) => _name = value!,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Email',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an email address';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Password',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          _password = value;
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: HexColor("#848484")),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: SubTextColor,
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          print('pw $_password val:$value');
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _password) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        onSaved: (value) => _ConfirmPassword = value!,
                      ),
                    )
                    ,
                    SizedBox(height: 20.0,),
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Contact Number',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the contact number address';
                          }
                          if (value.length != 10) {
                            return 'Phone number should have exactly 10 digits';
                          }
                          return null;
                        },
                        onSaved: (value) => _phone = value!,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Address',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an address';
                          }
                          return null;
                        },
                        onSaved: (value) => _address = value!,
                        
                      ),
                    ),SizedBox(height: 20.0),
                        Container(
                      width: 280.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color:navbar ,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color:HexColor("#848484")),
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left:10.0,top:-6.0),
                          hintText:'Date of Birth',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                            color:SubTextColor,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter you birthday ';
                          }
                          return null;
                        },
                        onSaved: (value) => _dob = value!,
                        
                      ),
                    ),



                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _submitForm();
                          
                        }
                      },
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
                    Text("Have an account?",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,)),
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
                        color:navbar ,
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
      ),
    );
  }
}