import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/Item.dart';
import '../constant/Colors.dart';
import '../provider/cart.dart';

class Stars extends StatelessWidget {
   Stars({Key? key,required this.product}) : super(key: key);
  Item product;
  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: Text('NEW',style: TextStyle(fontSize: 15),),
          decoration: BoxDecoration(
              color: kGround,
              borderRadius: BorderRadius.circular(4)
          ),
        ),
        Row(
          children: [
            Icon(Icons.star,size: 26,color: kColor,),
            Icon(Icons.star,size: 26,color: kColor),
            Icon(Icons.star,size: 26,color: kColor,),
            Icon(Icons.star,size: 26,color: kColor,),
            Icon(Icons.star,size: 26,color: kColor),
          ],
        ),
        SizedBox(width: 70,),
        Row(
          children: [
            Icon(Icons.edit_location,color: kColor,size: 26,),
            SizedBox(width: 3,),
            //Text(widget.product.location,style: TextStyle(fontSize: 17),)
          ],
        )

      ],
    );
  }
}
