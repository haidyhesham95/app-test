import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/Model/AppBar_Home.dart';
import 'package:e_commerce_app/Model/ProductSearch.dart';
import 'package:e_commerce_app/Model/body_Home.dart';
import 'package:e_commerce_app/Pages/NavigationBar.dart';
import 'package:e_commerce_app/component/appLocal.dart';
import 'package:flutter/material.dart';
import '../Model/Drawer.dart';
import '../Model/Item.dart';
import '../constant/Colors.dart';
import '../Model/Custom_appbar.dart';
import '../constant/Product Model.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: kGround,
        drawer: Drawer(
         child: CustomDarwer(),
        ),
        appBar:AppBar(
          backgroundColor: kGround,
          title: Center(
            child: Text(
              '${getLang(context,"Home")}',
            ),
          ),
          actions: [
            IconButton(onPressed: (){
              showSearch(context: context, delegate: ProductSearch());
            }, icon: Icon(Icons.search,size: 30,)),

            CustomAppBar(),

          ],
        ),
        body: SingleChildScrollView(
          child: BodyHome(),

        ),


      ),
    );
  }
}
