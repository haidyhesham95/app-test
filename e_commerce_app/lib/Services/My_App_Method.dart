import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:flutter/material.dart';

import '../Constant/Styles.dart';

class MyAppMethod{
  static Future<void>showErrorOrWarningDialog({
    required BuildContext context,
    required String data,
    required Function fct,
    bool isError = true,
})async{
    await showDialog(
        context: context,
        builder: (context){
  return AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/question.png',
          height: 60,
          width: 60,
        ),
        const SizedBox(height: 15,),
        Text(data),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !isError,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:  Text(
                  "Cancel", style: TextStyle (color: kPink),),
              ),
            ),
            TextButton(
              onPressed: () {
                fct();
                Navigator.pop(context);
              },
              child: const Text(
                "OK",style: TextStyle(color: kColor), ),
            ),
          ],
        )
      ],

    ),
  );
        }
    );
}

  static Future<void> imagePickerDialog({
    required BuildContext context,
    required Function cameraFCT,
    required Function galleryFCT,
    required Function removeFCT,
  }) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: kColor.withOpacity(0.5),
            shape: RoundedRectangleBorder(              
                borderRadius: BorderRadius.circular(12.0)),
            title:  Center(
              child: Text(
              "Choose Option", style:Styles.textStyle22,),),
             content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        cameraFCT();
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.camera,color: kPink,),
                      label: const Text(
                        "Camera",
                        style: TextStyle(
                          color: kPink
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        galleryFCT();
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.image,color: kPink),
                      label: const Text(
                        "Gallery",
                        style: TextStyle(
                            color: kPink
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        removeFCT();
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.remove,color: kPink,),
                      label: const Text(
                        "Remove",
                        style: TextStyle(
                            color: kPink
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}