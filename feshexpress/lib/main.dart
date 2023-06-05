import 'package:feshexpress/pages/cart_page.dart';
import 'package:feshexpress/pages/home_page.dart';
import 'components/categorytiles.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';
import 'model/categoary_model.dart';
import 'model/item_model.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoaryModel()),
        ChangeNotifierProvider(create: (context) => ItemModel()),
        ChangeNotifierProvider(create: (context) => cartModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Roboto',
          primaryColor: HexColor("#0EC42B"),
          dialogBackgroundColor: HexColor("#C8FFC1"),
        ),
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        // routes: {
        //   '/main': (context) => const HomePage(),
        //    '/cart': (context) => const CartPage(),
        //   // '/chat': (context) => const LoginPage(),
        //   // '/favorites': (context) => const ProfilePage(),
        // },
      ),
    );
  }
}
