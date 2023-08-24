import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/Styles.dart';

class BottomCheckOut extends StatelessWidget {
  const BottomCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: kBottomNavigationBarHeight +70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total(6 Products/6Items),style: Styles.textStyle20,'),
                  Text('16\$',style: Styles.textStyle15,),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
