import 'package:feshexpress/auth.dart';
import 'package:feshexpress/pages/signup_page.dart';
import 'package:feshexpress/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _errorMessage = '';

  

  Future<void> _submitForm() async {
    // print('submitting form');


    setState(() {
      _errorMessage = '';
    });
    bool result =
        await Provider.of<AuthProvider>(context, listen: false).login(
      _email,
      _password,
    );
    if (result == false) {
      setState(() {
        _errorMessage = 'You have to Sign Up first';
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
  Color textColor = Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#565555");
  Color subTextColor = Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#848484");
  Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;

  return Form(
    key: _formKey,
    child: Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Login image
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 20.0,
                      top: 80.0,
                      bottom: 100.0,
                    ),
                    child: Image.asset(
                      'lib/images/Login.png',
                      width: 350.0,
                      height: 250.0,
                    ),
                  ),
                  // Login text
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                  // Error message
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            _errorMessage,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        // Email input
                        Container(
                          width: 280.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: navbar,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: HexColor("#848484")),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.only(left: 10.0, top: -6.0),
                              hintText: 'User Name',
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: subTextColor,
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
                        SizedBox(height: 20.0),
                        // Password input
                        Container(
                          width: 280.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: navbar,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: HexColor("#848484")),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 10.0, top: -6.0),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: subTextColor,
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                            onSaved: (value) => _password = value!,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        // Login button
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
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: HexColor("#FFFFFF"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        // Sign up text
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        // Sign up button
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          ),
                          child: Container(
                            width: 280.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: navbar,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: HexColor("#0EC42B")),
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: HexColor("#0EC42B"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Login image
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 20.0,
                    top: 80.0,
                    bottom: 100.0,
                  ),
                  child: Image.asset(
                    'lib/images/Login.png',
                    width: 350.0,
                    height: 250.0,
                  ),
                ),
                // Forms
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0 ,left: 165.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB( 140.0, 8.0, 0.0, 0.0),
                          child: Text(
                            _errorMessage,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        // Email input
                        Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Container(
                            width: 280.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: navbar,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: HexColor("#848484")),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.only(left: 10.0, top: -6.0),
                                hintText: 'User Name',
                                hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: subTextColor,
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
                        ),
                        SizedBox(height: 10.0),
                        // Password input
                        Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Container(
                            width: 280.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: navbar,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: HexColor("#848484")),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(left: 10.0, top: -6.0),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: subTextColor,
                                ),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                              onSaved: (value) => _password = value!,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Login button
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              _submitForm();
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:80.0),
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
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor("#FFFFFF"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Sign up text
                        Padding(
                          padding: const EdgeInsets.only(left:140.0),
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Sign up button
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:80.0),
                            child: Container(
                              width: 280.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: navbar,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(color: HexColor("#0EC42B")),
                              ),
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor("#0EC42B"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    ),
  );
}

}
