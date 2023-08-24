import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import '../../Constant/Colors.dart';
import '../../Constant/Styles.dart';
import '../../Widget/CustomEmpty.dart';
import '../../Widget/Product/ProductWidget.dart';

class Favourit extends StatelessWidget {
  static const routName = '/WishlistScreen';
  const Favourit({super.key});
  final bool isEmpty = true;
  @override
  Widget build(BuildContext context) {

    return isEmpty
        ? Scaffold(
     body: CustomEmpty(
    imagePath: 'assets/images/nofav.png',
    label: 'There\`s nothing in here',
    title: 'Fill me up buttercup 😜',
    buttonText: 'Shop Now',
    ) ,


    ):Scaffold(
      appBar: AppBar(
        backgroundColor: kColor,
        leading: Image.asset('assets/images/logo.png'),
        title:Text(
          'Favourit',
          style: Styles.textStyle22,
        ) ,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.clear,

            ),
          ),
        ],
      ),

      body: DynamicHeightGridView(
        builder: ((context,index)
        {
          return ProductWidget();
        }),
        itemCount: 5,
        crossAxisCount: 2,
      ),
    );
  }
}
