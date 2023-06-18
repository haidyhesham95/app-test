import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapi/model/custom%20text%20filed.dart';
import 'package:storeapi/model/customButton.dart';
import 'package:storeapi/model/product_model.dart';
import 'package:storeapi/service/update%20product.dart';
import 'package:storeapi/model/product_model.dart';


class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({Key? key}) : super(key: key);
  static String id = 'UpdateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String?productName, desc, image;

  String?price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!
        .settings
        .arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,

      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product', style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(height: 100,),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(height: 15,),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(height: 15,),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                ),
                SizedBox(height: 15,),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Image',
                ),
                SizedBox(height: 50,),
                CustomButton(
                  text: 'Update',
                  onTap: () {
                    isLoading = true;
                    setState(() {});
                    try{
                      updateProduct(product);

                    }catch(e){
                      print(e.toString());
                    }
                    isLoading=false;
                    setState(() {});
                  },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

Future<void> updateProduct(ProductModel product)async
  {
    await UpdateProduct().updateProduct(
      id: product.id,
      title: productName==null?product.title:productName!,
      price: price==null?product.price.toString():price!,
      desc: desc==null?product.description:desc!,
      image: image==null?product.image:image!,
      category: product.category,


    );
    isLoading = false;
  }
}
