import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:e_commerce_app/Pages/Cart/Cart.dart';
import 'package:e_commerce_app/Pages/Profile/Profile.dart';
import 'package:e_commerce_app/Pages/Search/Search.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'Pages/Home/Home.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  List Screens = const  [
    Home(),
    Search(),
    Cart(),
   Profile(),
  ];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          index:_page,
          height: 55.0,
          items: const [
             Icon(IconlyBroken.home, size: 28),
            Icon(IconlyBroken.search, size: 28,),
            Badge(
              backgroundColor:kPink ,
              label: Text('6',),
                child: Icon(IconlyBroken.bag_2, size: 28)),
            Icon(IconlyBroken.profile, size: 28),
          ],
          color:kColor ,
          buttonBackgroundColor:kPink ,
          backgroundColor:Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration:const Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              _page=index;

            });
          },
        ),
        body: Screens[_page],
      ),
    );
  }
}
