import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Constant/Colors.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key, this.color=Colors.transparent,this.size = 22,});
final Color? color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return  Container(
     decoration: BoxDecoration(
       shape: BoxShape.circle,
       color: color,
     ),
      child: IconButton(
        style: IconButton.styleFrom(
          shape: CircleBorder(),

        ),
        onPressed: (){},
        icon: Icon(IconlyLight.heart,color: kPink,size: size,),),
    );
  }
}
