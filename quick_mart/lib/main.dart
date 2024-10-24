// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_mart/navigation/favourites.dart';
import 'package:quick_mart/screens/accountinfo.dart';
import 'package:quick_mart/screens/home.dart';
import 'package:quick_mart/screens/products/cart.dart';
import 'package:quick_mart/screens/products/category.dart';
import 'package:quick_mart/screens/splash.dart';
import 'package:quick_mart/widget/cartwidget.dart'; // Import the cart state

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartState()), // Provide CartState here
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const splashscreen(),
        // initialRoute: '/home',
        routes: {
          '/home': (context) => Home(),
          '/cat': (context) => p_category(),
          '/fav': (context) => ProductFavorite(),
          '/cart': (context) => CartScreen(),
          '/account':(context)=> AccountInfoPage(),
        },
      ),
    );
  }
}
