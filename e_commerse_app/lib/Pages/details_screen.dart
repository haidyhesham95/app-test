
import 'package:e_commerce_app/Pages/Card.dart';
import 'package:e_commerce_app/Pages/Check_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../Cubits/home_cubit.dart';
import '../Model/Item.dart';
import '../constant/Colors.dart';
import '../Model/Custom_appbar.dart';
import '../provider/cart.dart';

class Details extends StatefulWidget {
  Details({Key? key,required this.product}) : super(key: key);

Item product;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
bool isShowMore=true;

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kGround,
          title: Center(
            child: Text(
              'Details',
            ),
          ),
          actions: [
            CustomAppBar(),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Image.network(cubit.Product[index].imageUrl.toString(),),
                Image.asset(widget.product.imgPath,width:double.infinity,),
                Row(
                  children: [
                    Text('Size'),
                    SizedBox(width: 5,),
                    Text('Small')
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Text(cubit.Product[index].name.toString(),),
                    // Text(cubit.Product[index].price.toString(),),
                    Text(' ${widget.product.name}',style: TextStyle(fontSize: 20),),
                    Text('\$ ${widget.product.price}',style: TextStyle(fontSize: 20),),


                  ],
                ),

                SizedBox(height: 20,),
                SizedBox(
                    width: double.infinity,
                    child: Text('Details :',style: TextStyle(fontSize: 20),textAlign: TextAlign.start,)),
                SizedBox(height: 18,),
                //Text(cubit.Product[index].imageUrl.toString(),),
                Text('A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae).',
                  style: TextStyle(fontSize: 18),
                  maxLines:isShowMore? 2:null,
                  overflow: TextOverflow.fade,),
                TextButton(onPressed: (){
                  setState(() {
                    isShowMore=!isShowMore;
                  });
                }, child: Text(isShowMore?'ShowMore':'ShowLess',style: TextStyle(fontSize: 18,color: kGround),),),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>CheckOut()));
                      },
                      child: Text(
                        'Checkout Now',
                        style: TextStyle(fontSize: 18),

                      ),
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(kColor),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20),),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(30) ),),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {



                      },
                      child:Icon(Icons.shopping_cart_outlined,color: kColor,size: 25,),
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20),),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(30) ),),
                      ),
                    ),


                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }
}
