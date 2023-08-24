import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:e_commerce_app/Constant/const.dart';
import 'package:e_commerce_app/Pages/Home/proText.dart';
import 'package:flutter/material.dart';
import '../../Widget/CustomApp_Bar.dart';
import '../Search/SearchView.dart';
import 'SwiperHome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SwiperHome(),
              SizedBox(height: 15,),
              ProText(),
              SizedBox(height: 10,),
              SearchView(),

        ],
    ),
      ),
    );
  }
}
