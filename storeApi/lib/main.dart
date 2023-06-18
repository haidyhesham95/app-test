import 'package:flutter/material.dart';
import 'package:storeapi/screens/UpdateProduct%20Page.dart';
import 'package:storeapi/screens/home_page.dart';
import 'package:storeapi/service/update%20product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id:(context)=>HomePage(),
        UpdateProductPage.id:(context)=>UpdateProductPage(),
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


      ),

    );
  }
}

