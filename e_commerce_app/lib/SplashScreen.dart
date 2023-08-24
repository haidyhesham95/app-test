import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Pages/auth/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'bottom_Navigation.dart';
class Splach extends StatelessWidget {
  const Splach({super.key});

  @override
  Widget build(BuildContext context) {
   // Size size =MediaQuery.of(context).size;
    return Center(
      child: SplashScreenView(
        navigateRoute:const Login(),
        duration: 5000,
        imageSize:300,
        imageSrc: "assets/images/logo.png",

        backgroundColor: kColor,

      ),
    );
  }
}
