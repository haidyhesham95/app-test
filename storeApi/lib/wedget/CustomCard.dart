import 'package:flutter/material.dart';
import 'package:storeapi/model/product_model.dart';
import 'package:storeapi/screens/UpdateProduct%20Page.dart';
class CustomCard extends StatefulWidget {
   CustomCard({required this.product,
    Key? key}) : super(key: key);
ProductModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (  ){
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: widget.product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(

            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10))
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title.substring(0,6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         r'$' '${widget.product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -40,
            child: Image.network(widget.product.image,
              height: 100,
            width: 100,),

          ),
        ],
      ),
    );
  }
}