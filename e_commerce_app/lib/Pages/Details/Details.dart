import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../Constant/Colors.dart';
import '../../Constant/Styles.dart';
import '../../Widget/WidgetAppBar.dart';
import '../../Widget/heartWidget.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: WidgetAppBar(data: 'Details',),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network('https://tse4.mm.bing.net/th?id=OIP.JaqzqJg1p99t481I8jRjzwHaHZ&pid=Api&P=0&h=180',
            height: size.height*0.38,
            width: double.infinity,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text('perfume',style: Styles.textStyle20,),flex: 2,),
                Flexible(child: Text('10.6\$',style:Styles.textStyle15)),

              ],
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HeartWidget(
                    color:Colors.teal.shade50 ,
                  ),

                  SizedBox(width: 20,),
                  Expanded(
                      child: SizedBox(
                        height: kBottomNavigationBarHeight-10,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                          ),
                            onPressed: (){},
                            icon: Icon(IconlyLight.bag_2,color: kColor,),
                            label: Text('ADD TO CART',style: TextStyle(color: kColor,fontSize: 17),)),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DETAILS:-',style: Styles.textStyle25,),
                Text('100ml',style: Styles.textStyle20,),
              ],
            ),
            const SizedBox(height: 22,),
            Text('vdfdfdjgfdkjgfd'*15),
            



          ],
        ),
      ),
    );
  }
}
