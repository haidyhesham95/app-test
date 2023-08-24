import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtySheet extends StatelessWidget {
  const OtySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children:[
          const SizedBox(height: 20,),
          Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(12),
              color: kPink,
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder:(context,index){
                  return InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('${index+1}',
                          style: Styles.textStyle20,

                        ),
                      ),

                    ),
                  );

                } ),
          ),
        ]
      ),
    );
  }
}
