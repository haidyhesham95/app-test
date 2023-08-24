import 'dart:math';

import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Pages/Search/SearchView.dart';
import 'package:e_commerce_app/Widget/WidgetAppBar.dart';
import 'package:flutter/material.dart';

import '../../Widget/CustomTextField.dart';
import 'TSearch.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: WidgetAppBar(data: 'Search',),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
             TSearch(),
              SizedBox(height: 20,),
              SearchView(),


            ],
          ),
        ),
      ),
    );
  }
}
