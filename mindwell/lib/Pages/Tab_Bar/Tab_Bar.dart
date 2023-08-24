import 'package:flutter/material.dart';
import 'package:mindwell/Pages/Login/Login.dart';
import 'package:mindwell/Pages/Sign%20up/Sign%20up.dart';

class Tab_Bar extends StatefulWidget implements PreferredSizeWidget{
   Tab_Bar({Key? key}) : super(key: key);

  @override
  State<Tab_Bar> createState() => _Tab_BarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return
       DefaultTabController(

        length: 2,
        child: Scaffold(
          backgroundColor: const Color(0xffE0D5C0),
          appBar: AppBar(
            //backgroundColor:Color(0xffE0D5C0),
            backgroundColor: const Color(0xffF1E6DA),

            title: const Center(
              child: Text('Mind Well',
                  style: TextStyle(fontSize: 30, fontFamily: 'Courgette'),),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.login),
                  text: 'Sign In',
                ),
                Tab(
                  icon: Icon(Icons.login),
                  text: 'Sign Up',
                ),

              ],
            ),


          ),
          body: const TabBarView(
            children: [
              Login(),
            SignUp(),
            ],
          ),
        ),
      );

  }
}
