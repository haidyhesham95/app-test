import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce_app/Widget/Product/ProductWidget.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DynamicHeightGridView(
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
