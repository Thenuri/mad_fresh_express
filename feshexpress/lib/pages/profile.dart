import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
     Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#4D4B4B");
         Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
                      Color subtext= Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:24.0, top: 72.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded,color: topic),
                    onPressed: () {
                      Navigator.pop(context); // Go back when the icon is tapped
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:70.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:topic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
            padding: const EdgeInsets.only(left:10.0,right:20.0),
            child: Image.asset('lib/images/Profile.png',width: 350.0, height: 250.0,),
          ),
          SizedBox(height: 20.0,),
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
                        hintText:'Date Of Birth',
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
                        hintText:'Email Address',
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
                        hintText:'House Hold Size',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color:HexColor("#848484"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Center(
              child: Column(
                children: [
                  
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Update'),
                            content: Text('Your profile has been updated '),
                            // actions: [
                            //   TextButton(
                            //     onPressed: () {
                            //       Navigator.of(context).pop(); // Close the pop-up
                            //     },
                            //     child: Text(
                            //       'No',
                            //       style: TextStyle(
                            //         color: Colors.black,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //   ),
                            //   TextButton(
                            //     onPressed: () {
                            //       // Perform redeeming logic
                            //       Navigator.of(context).pop(); // Close the pop-up
                            //     },
                            //     child: Text(
                            //       'Yes',
                            //       style: TextStyle(
                            //         color: Colors.black,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //   ),
                            // ],
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
                      width: 265.0,
                      height: 35.0,
                      padding: const EdgeInsets.only(top: 5.0),
                      child: const Text(
                        "Update",
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
          ],
        ),
      ),
    );
  }
}
