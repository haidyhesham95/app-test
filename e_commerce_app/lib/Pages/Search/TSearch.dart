import 'dart:math';

import 'package:flutter/material.dart';

import '../../Constant/Colors.dart';
import '../../Widget/CustomTextField.dart';

class TSearch extends StatefulWidget {
  const TSearch({super.key});

  @override
  State<TSearch> createState() => _TSearchState();
}

class _TSearchState extends State<TSearch> {
  late TextEditingController searchTextController;

  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Search',
      prefixIcon:Icon(Icons.search,color: kColor,),
      suffixIcon: GestureDetector(
        onTap: (){
          searchTextController.clear();
          FocusScope.of(context).unfocus();
        },
        child: Icon(Icons.close,color: kColor,),
      ),
      keyboardType: TextInputType.text ,
      controller: searchTextController,
      onSubmitted:(value){
        log(searchTextController.text as num);
      },
    );
  }
}
