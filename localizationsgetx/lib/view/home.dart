import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../local/local.controll.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController controllerLang =Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
          //   MaterialButton(
          //     onPressed: (){
          //       controllerLang.changeLang("ar");
          //     },
          //     color: Colors.brown,
          //     textColor: Colors.white,
          //     child: Text("2".tr),
          //   ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: (){
             if(controllerLang.changeLang == "ar"){
               controllerLang.changeLang("en");
             }else{
               controllerLang.changeLang("ar");
             }

              },
              color: Colors.brown,
              textColor: Colors.white,
              child: Text("3".tr),
            ),
          ],
        ),
      ),

    );
  }
}
