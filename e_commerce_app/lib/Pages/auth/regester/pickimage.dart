import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatelessWidget {
  const PickImage({super.key, this.pickedImage,required this.function});
final XFile?pickedImage;
final Function function;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/images/profile.gif'),
        ),
        Positioned(
          top: -9,
          left: 75,
          child: IconButton(
            onPressed: (){
             function();
            },
            icon: const Icon(Icons.add_a_photo,),
          ),
        )
      ],
    );
  }
}
