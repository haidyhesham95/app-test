import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapi/model/product_model.dart';
import 'package:storeapi/service/all%20product.dart';
import 'package:storeapi/wedget/CustomCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProducts().getAllProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
        if (snapshot.hasData) {
          List<ProductModel>products = snapshot.data!;
          return GridView.builder(
           itemCount: products.length,
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 100,
          ),
          itemBuilder: (context,index){
          return CustomCard(product: products[index],);
          });
        }else{
          return Center(child: CircularProgressIndicator());

        }
        },
        ),
      ),

    );
  }
}


