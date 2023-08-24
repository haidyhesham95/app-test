import 'package:flutter/material.dart';
import '../Model/body_Card.dart';
import '../constant/Colors.dart';

class CARD extends StatelessWidget {
  const CARD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: kColor,
      appBar: AppBar(
        backgroundColor: kGround,
        title: Center(
          child: Text(
            'SHOPPING CART',
          ),
        ),
        ),

      body: SingleChildScrollView(
          child: BodyCard()),


    );
  }
}
