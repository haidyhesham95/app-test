import 'dart:html';
import 'dart:io';
import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Model/Custom_Button.dart';
import '../constant/Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class Person extends StatelessWidget {
   Person({super.key, });
  //  File file;
  //
  // var imagepicker = ImagePicker();
  //
  // uploadImages ()async{
  //   var imgpicked = await imagepicker.pickImage(source: ImageSource.camera);
  //   if(imgpicked!=null){
  //    file= File(imgpicked.path);
  //    var nameimage=basename(imgpicked.path);
  //
  //
  //    var random=Random().nextInt(10000000000);
  //    nameimage='$random$nameimage';
  //
  //    var refstorage=FirebaseStorage.instance.ref('profileImage/$nameimage');
  //    await refstorage.putFile(file);
  //    var url=refstorage.getDownloadURL();
  //    print('url:$url');
  //   }else{
  //     print('please choose image');
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGround,
        title: Center(child: Text('Profile')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                // //_image != null
                //     ? CircleAvatar(
                //   radius: 64,
                //  // backgroundImage: MemoryImage(),
                // ):
                     const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/images/icons8.png'),
                ),
                Positioned(
                  bottom: -9,
                  left: 85,
                  child: IconButton(
                    onPressed: ()async{
                     // await uploadImages();
                    },
                    icon: const Icon(Icons.add_a_photo),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 20,left: 20),
            //   child: TextField(
            //     keyboardType: TextInputType.text,
            //    // controller:nameController,
            //     decoration: const InputDecoration(
            //
            //       hintText: 'Enter Your Name',
            //       contentPadding: EdgeInsets.all(10),
            //
            //       focusedBorder: OutlineInputBorder(
            //
            //         borderSide: BorderSide(
            //           color: kColor,
            //           width: 1.5,
            //         ),
            //       ),
            //
            //       enabledBorder: OutlineInputBorder(
            //          // borderRadius:BorderRadius.circular(18) ,
            //           borderSide: BorderSide(
            //             color: kColor,
            //             width: 1.5,
            //           )
            //       ),
            //       border: OutlineInputBorder(
            //           borderSide: BorderSide(
            //               color: kColor
            //           )
            //       ),
            //     ),
            //
            //   ),
            // ),
            //
            //
            // const SizedBox(
            //   height: 24,
            // ),
            MaterialButton(
              onPressed: ()async{
               // await uploadImages();
              },

              child: CustomButton(text: 'Save',

              ),
            )
          ],
        ),
      ),
    );
  }
}