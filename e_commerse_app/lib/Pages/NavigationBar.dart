import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/Pages/Card.dart';
import 'package:e_commerce_app/Pages/Check_out.dart';
import 'package:e_commerce_app/Pages/Page4.dart';
import 'package:e_commerce_app/Pages/home.dart';
import 'package:e_commerce_app/Pages/person.dart';
import 'package:flutter/material.dart';

import '../constant/Colors.dart';
import 'details_screen.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  List Screens = [
    Home(),
    CARD(),
    CheckOut(),
   // Page4(),
    Person(),

  ];

  int _page = 0;
 // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          index:_page,
         // key: _bottomNavigationKey,
          height: 60.0,
          items: [
            Icon(Icons.home, size: 30),
            Icon(Icons.add_shopping_cart, size: 30,),
            Icon(Icons.check_box, size: 30),
            //Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color:Colors.white ,
          buttonBackgroundColor: Colors.white,
          backgroundColor:kGround,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              _page=index;

            });
          },
          //letIndexChange: (index) => true,
        ),
        body: Screens[_page],
      ),
    );
  }
}





