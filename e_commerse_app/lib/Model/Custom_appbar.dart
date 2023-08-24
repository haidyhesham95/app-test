import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Pages/Card.dart';
import '../Pages/Card.dart';
import '../provider/cart.dart';
import '../constant/Colors.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({Key? key}) : super(key: key);
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final cartt= Provider.of<Cart>(context);
       return Row(
        children: [

             Stack(
              children: [
                Container(
                  child: Text('${cartt.itemCount}'),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: kColor,
                    shape: BoxShape.circle,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>CARD()));
                  },
                  // onPressed: () {
                  //   final CurvedNavigationBarState? navBarState =
                  //       _bottomNavigationKey.currentState;
                  //   navBarState?.setPage(Card() as int);
                  // },
                  icon: Icon(
                    Icons.add_shopping_cart,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                '\$ ${cartt.price}',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),


        ],

     );

  }
}
