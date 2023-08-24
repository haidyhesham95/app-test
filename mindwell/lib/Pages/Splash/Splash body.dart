import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindwell/Pages/Home_Screen/Welcome.dart';
import 'package:mindwell/Pages/Home_Screen/Welcome_Page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../Home_Screen/Home _Screen.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: SplashScreenView(

        navigateRoute: Welcome_Page(),
        duration: 5000,
        imageSize: 300,
        imageSrc: "assets/images/cdfg-fotor.png",

        text: "MindWell",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
            fontSize: 45,
             fontFamily: 'Courgette',

          ),


        colors: [
          Color(0xffEF9179),
          Color(0xffE48495),
          Color(0xffB1C99F),
          Color(0xffFF8C69),

        ],
        backgroundColor: Color(0xffE0D5C0),
        //backgroundColor:Color(0xffDFCCC6),
      ),
    );
  }
}
