import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

 @override
Widget build(BuildContext context) {
  Color textColor =
      Theme.of(context).brightness == Brightness.dark ? Colors.white : HexColor("#565555");
  Color navbar =
      Theme.of(context).brightness == Brightness.dark ? HexColor("#3B3B3B") : Colors.white;
  final Brightness brightness = Theme.of(context).brightness;

  String sentence = 'We deliver fresh items to your doorstep';
  int breakIndex = 10;
  int breakIndex1 = 30;
  String firstPart = sentence.substring(0, breakIndex);
  String secondPart = sentence.substring(breakIndex, breakIndex1);
  String thirdPart = sentence.substring(breakIndex1);

  return Scaffold(
    body: OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Image.asset(
                  brightness == Brightness.dark ? 'lib/images/logo2.png' : 'lib/images/logo1.png',
                  width: 400.0,
                  height: 204.11,
                ),
              ),

              // text
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      firstPart,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: _getResponsiveFontSize(context, 40.0),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: textColor,
                      ),
                    ),
                    Text(
                      secondPart,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: _getResponsiveFontSize(context, 40.0),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: textColor,
                      ),
                    ),
                    Text(
                      thirdPart,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: _getResponsiveFontSize(context, 40.0),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

    
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }),
                ),
                child: Container(
                  width: _getResponsiveWidth(context, 250.0),
                  height: _getResponsiveHeight(context, 70.0),
                  decoration: BoxDecoration(
                    color: HexColor("#0EC42B"),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.all(19),
                  child: Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: _getResponsiveFontSize(context, 24.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: HexColor("#FFFFFF"),
                    ),
                  ),
                ),
              ),

              Spacer(),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // image
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Image.asset(
                  brightness == Brightness.dark ? 'lib/images/logo2.png' : 'lib/images/logo1.png',
                  width: 250.0,
                  height: 250,
                ),
              ),

              // text and button
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // text
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:150.0),
                            child: Text(
                              firstPart,
                              
                              style: TextStyle(
                                fontSize: _getResponsiveFontSize(context, 20.0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: textColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:70.0),
                            child: Text(
                              secondPart,
                             
                              style: TextStyle(
                                fontSize: _getResponsiveFontSize(context, 20.0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: textColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:170.0),
                            child: Text(
                              thirdPart,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: _getResponsiveFontSize(context, 20.0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 180.0),
                        child: Container(
                          width: _getResponsiveWidth(context, 100.0),
                          height: _getResponsiveHeight(context, 150.0),
                          decoration: BoxDecoration(
                            color: HexColor("#0EC42B"),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(19),
                          child: Text(
                            "Get Started",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: _getResponsiveFontSize(context, 10.0),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    ),
  );
}


  
}


// Helper function to calculate responsive font size
  double _getResponsiveFontSize(BuildContext context, double fontSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    return fontSize * screenWidth / 414.0; // Adjust the base screen width as needed
  }

  // Helper function to calculate responsive width
  double _getResponsiveWidth(BuildContext context, double width) {
    final screenWidth = MediaQuery.of(context).size.width;
    return width * screenWidth / 414.0; // Adjust the base screen width as needed
  }

  // Helper function to calculate responsive height
  double _getResponsiveHeight(BuildContext context, double height) {
    final screenHeight = MediaQuery.of(context).size.height;
    return height * screenHeight / 896.0; // Adjust the base screen height as needed
  }