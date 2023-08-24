import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:e_commerce_app/Widget/CustomEmpty.dart';
import 'package:flutter/material.dart';

import '../../Widget/WidgetAppBar.dart';
import 'Cart Widget.dart';
import 'CustomButtom.dart';

class Cart extends StatelessWidget {
  const Cart({super.key,});
final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty? Scaffold(
      body: CustomEmpty(
        imagePath: 'assets/images/empty_cart.png',
        label: 'Your cart is empty',
        title: 'Add something to make me happy ☺️',
        buttonText: 'Shop Now',
      ) ,
    ):
    Scaffold(
      appBar:const WidgetAppBar(
        data: 'Cart',
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:8,
                itemBuilder:((context, index) {
                  return const CartWidget();
                }),
            ),
          ),
         // Row(
         //    mainAxisAlignment: MainAxisAlignment.spaceAround,
         //    children: [
         //      CustomButtom(
         //        data: 'Total\$16',
         //        style: Styles.textStyle18,
         //        backgroundColor: MaterialStateProperty.all(Colors.white),
         //
         //      ),
         //      CustomButtom(
         //        data: 'Check out',
         //        style: TextStyle(fontSize: 18),
         //        backgroundColor: MaterialStateProperty.all(kColor),
         //
         //      ),
         //    ],
         //  ),
        ],
      )


    );
  }
}