import 'package:book_app/Constant.dart';
import 'package:book_app/Styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class Shows extends StatelessWidget {
  const Shows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment:CrossAxisAlignment.start,
           children: [
             SizedBox(height: 30,),
             Stack(
               alignment: AlignmentDirectional.topEnd,
               children:[

                 Container(

                 height: 300,
                 width: MediaQuery.of(context).size.width,
                 child: Image.asset('asset/h.jpg',fit: BoxFit.fill,
                 ),
               ),

                 Padding(
                   padding: const EdgeInsets.all(9.0),
                   child: CircleAvatar(

                     backgroundColor: Colors.black38,
                     radius: 22,

                         child: Icon(Icons.bookmark,color: Colors.red,size: 28,),

                   ),
                 ),
                SizedBox(height: 20,),

                 Positioned(
                   bottom: 10,
                   right: 10,
                   left: 10,

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                     children: [
                       Column(
                         crossAxisAlignment:CrossAxisAlignment.start,
                         children: [
                           Text('The Last Of Us',style: Styles.textStyle25),
                           SizedBox(height: 7,),
                           Row(
                             children: [
                               Text('S1E9',style: Styles.textStyle18),
                               SizedBox(width: 7,),
                               Icon(Icons.circle,color: Colors.grey,size:10,),
                               SizedBox(width: 7,),
                               Text('Drama',style: Styles.textStyle18),
                               SizedBox(width: 7,),
                               Icon(Icons.circle,color: Colors.grey,size: 10,),

                               SizedBox(width: 7,),
                               Text('1 Season',style: Styles.textStyle18),

                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               Icon(Icons.star,color: Colors.amber,),
                               SizedBox(width: 7,),
                               Text('8.8',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                               SizedBox(width: 7,),
                               Text('(2k)',style: Styles.textStyle18,),
                             ],
                           ),




                         ],
                       ),
                       CircleAvatar(

                         backgroundColor: Colors.red,
                         radius: 22,

                         child: Icon(Icons.play_arrow,color: Colors.white,size: 28,),

                       ),
                     ],
                   ),
                 ),

               ]
             ),
             
             
             SizedBox(
               height: 20,
             ),
             Padding(
               padding:EdgeInsets.symmetric(horizontal: 20),
               child: Text('Story',style: Styles.textStyle25),
             ),
             SizedBox(height: 20,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20),
                child: ReadMoreText('Twenty years after modern civilization has been destroyed. Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal and heartbreaking journey as they both must traverse the U.S. and depend on each other for survival.',
                  style: TextStyle(color:Colors.grey,fontSize: 20, ),
                  trimLines: 4,
                  //colorClickableText: Colors.white,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(color:Colors.grey,fontSize: 17, fontWeight: FontWeight.bold),

                ),
              )

           ],
         ),
       ),


    );
  }
}
