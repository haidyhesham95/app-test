import 'package:e_commerce_app/Pages/Details/Details.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../Constant/Colors.dart';
import '../../Constant/Styles.dart';
import '../heartWidget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(7),
      child: GestureDetector(
        onTap: ()async{
         await Navigator.push (
            context,
            MaterialPageRoute(
                builder: (context) => Details(

                )),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: FancyShimmerImage(
                imageUrl:'https://tse4.mm.bing.net/th?id=OIP.JaqzqJg1p99t481I8jRjzwHaHZ&pid=Api&P=0&h=180' ,
              height: size.height*0.22,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text('perfume'),flex: 2,),
                Flexible(
                  child: HeartWidget(),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text('10.6\$',style:Styles.textStyle15)),
                Flexible(
                  child: InkWell(
                    onTap: (){},
                    child:const Icon(IconlyLight.bag_2,color: kColor,),),
                ),

              ],
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
