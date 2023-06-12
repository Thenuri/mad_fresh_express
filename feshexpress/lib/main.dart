// import 'package:feshexpress/auth.dart';
// import 'package:feshexpress/pages/cart_page.dart';
// import 'package:feshexpress/pages/contact-us.dart';
// import 'package:feshexpress/pages/home_page.dart';
// import 'package:feshexpress/pages/profile.dart';
// import 'package:feshexpress/pages/promotions.dart';
// import 'package:feshexpress/pages/purchase-history.dart';
// import 'package:feshexpress/pages/settings.dart';
// import 'package:flutter/services.dart';
// import 'components/categorytiles.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:provider/provider.dart';
// import 'model/cart_model.dart';
// import 'model/categoary_model.dart';
// import 'model/item_model.dart';
// import 'pages/intro_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.landscapeLeft,
//     DeviceOrientation.landscapeRight,
//   ]);
//   runApp(
//     ChangeNotifierProvider(
//             create: (BuildContext context) => AuthProvider(),
//             child: MyApp(),
//         )
    
    
//     );
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => CategoaryModel()),
//         ChangeNotifierProvider(create: (context) => ItemModel()),
//         ChangeNotifierProvider(create: (context) => cartModel()),
//       ],
//       child: MaterialApp(
//         theme: ThemeData(
//           useMaterial3: true,
//           brightness: Brightness.light,
//           fontFamily: 'Roboto',
//           primaryColor: HexColor("#0EC42B"),
//           dialogBackgroundColor: HexColor("#C8FFC1"),

//         ),
//         darkTheme: ThemeData(
//           useMaterial3: true,
//           brightness: Brightness.dark,
//           fontFamily: 'Roboto',
//           primaryColor: HexColor("#0EC42B"),
//           dialogBackgroundColor: HexColor("#C8FFC1"),
//         ),

//         debugShowCheckedModeBanner: false,
//         home: const IntroPage(),
//          routes: {
//          '/profile': (context) => profile(),
//     '/purchase-history': (context) => purchasehistory(),
//     '/contact-us': (context) => contactus(),
//     '/settings': (context) => settings(),
//     '/promotions': (context) => promotions(),
//          },
//       ),
//     );
//   }
// }

import 'package:feshexpress/auth.dart';
import 'package:feshexpress/model/favourite_provider.dart';
import 'package:feshexpress/pages/cart_page.dart';
import 'package:feshexpress/pages/contact-us.dart';
import 'package:feshexpress/pages/home_page.dart';
import 'package:feshexpress/pages/profile.dart';
import 'package:feshexpress/pages/promotions.dart';
import 'package:feshexpress/pages/purchase-history.dart';
import 'package:feshexpress/pages/settings.dart';
import 'package:flutter/services.dart';
import 'components/categorytiles.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';
import 'model/categoary_model.dart';
import 'model/favorite_provider.dart';
import 'model/item_model.dart';
import 'pages/intro_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cartModel=CartModel();
  await cartModel.loadCart();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(
    ChangeNotifierProvider(
            create: (BuildContext context) => AuthProvider(),
            child: MyApp(),
        )
    
    
    );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoaryModel()),
        ChangeNotifierProvider(create: (context) => ItemModel()),
        ChangeNotifierProvider(create: (context) => CartModel(),child:cartPage(),),
        ChangeNotifierProvider(create: (context) => FavouriteModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          fontFamily: 'Roboto',
          primaryColor: HexColor("#0EC42B"),
          dialogBackgroundColor: HexColor("#C8FFC1"),

        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          fontFamily: 'Roboto',
          primaryColor: HexColor("#0EC42B"),
          dialogBackgroundColor: HexColor("#C8FFC1"),
        ),

        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
         routes: {
         '/profile': (context) => profile(),
    '/purchase-history': (context) => purchasehistory(),
    '/contact-us': (context) => contactus(),
    '/settings': (context) => settings(),
    '/promotions': (context) => promotions(),
         },
      ),
    );
  }
}
