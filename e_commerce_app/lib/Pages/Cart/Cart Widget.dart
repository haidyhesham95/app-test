import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../Widget/heartWidget.dart';
import 'QtySheet.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
           ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              imageUrl:'https://tse4.mm.bing.net/th?id=OIP.JaqzqJg1p99t481I8jRjzwHaHZ&pid=Api&P=0&h=180' ,
              height: size.height*0.2,
              width: size.height*0.2,
            ),
          ),
              const SizedBox(height: 10,),
              const SizedBox(width: 10,),
              IntrinsicWidth(
                child: Column(
                  children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width*0.6,
                        child: Text('perfume',style: Styles.textStyle20,),
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.close,color: kColor,
                              ),
                          ),
                          HeartWidget(),
                        ],
                      ),

                    ],
                  ),
                    Row(
                     children: [
                        Text('16\$',style:Styles.textStyle15),
                        const Spacer(),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: BorderSide(width: 2,color: kColor)
                          ),
                            onPressed: ()async{
                            await showModalBottomSheet(
                              backgroundColor: kColor.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft:Radius.circular(16) ,
                                    topRight: Radius.circular(16),
                                  )
                                ),
                                context: context,
                                builder: (context){
                                return const OtySheet();

                                });

                            },
                            icon: Icon(IconlyLight.arrow_down_2,color: kColor,),
                            label: Text('Qty:6',style: Styles.textStyle15,),
                        ),

                      ],
                    )

                ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
