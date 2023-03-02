import 'package:farm_cod/Provider/cart_data.dart';
import 'package:farm_cod/Provider/product_data.dart';
import 'package:farm_cod/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductData()),
        ChangeNotifierProvider(create: (context) => CartData()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FARMCOD',
          theme: ThemeData(primarySwatch: Colors.green),
          home: SplashScreen()),
    );
  }
}
