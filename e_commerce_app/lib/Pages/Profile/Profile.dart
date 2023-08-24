import 'package:e_commerce_app/Pages/Profile/CustomVisibilty.dart';
import 'package:e_commerce_app/Widget/CustomApp_Bar.dart';
import 'package:flutter/material.dart';

import 'CustomProfile.dart';
import 'ListTile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            CustomVisibilty(),
              SizedBox(height: 20),
             CustomProfile(),
            SizedBox(height: 5),
             Divider(thickness: 1.5,),
             SizedBox(height: 15),
             List_Tile(),
          ],
        ),
      ),
    );
  }
}
