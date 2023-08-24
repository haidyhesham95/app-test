import 'package:e_commerce_app/Pages/order/Order.dart';
import 'package:e_commerce_app/Pages/recently/Recently.dart';
import 'package:e_commerce_app/Services/My_App_Method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import '../../Constant/Styles.dart';
import '../../Setting/Theme_cubit.dart';
import '../Favourit/Favourit.dart';

class List_Tile extends StatelessWidget {
  const List_Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/images/order.png',height: 30,),
          title: Text(
            'All orders',
            style:Styles.textStyle22,
          ),
          onTap: (){
            Navigator.push (
              context,
              MaterialPageRoute(
                  builder: (context) => Order(

                  )),
            );
          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),

        ListTile(
          leading: Image.asset('assets/images/viewed.png',height: 30,),
          title: Text(
            'Viewed recently',
            style:Styles.textStyle22,
          ),
          onTap: (){
            Navigator.push (
              context,
              MaterialPageRoute(
                  builder: (context) => Recently(

                  )),
            );
          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),

        ListTile(
          leading: Image.asset('assets/images/love.png',height: 30,),
          title: Text(
            'Favorites',
            style:Styles.textStyle22,
          ),
          onTap: (){
            Navigator.push (
              context,
              MaterialPageRoute(
                  builder: (context) => Favourit(

                  )),
            );
          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),

        ListTile(
          leading: Image.asset('assets/images/address.png',height: 30,),
          title: Text(
            'Address',
            style:Styles.textStyle22,
          ),
          onTap: (){
          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),

        ListTile(
          leading: Image.asset('assets/images/theme.png',height: 30,),
          title: Text(
            'Theme',
            style:Styles.textStyle22,

          ),
          onTap: (){
            BlocProvider.of<ThemeCubit>(context).toggleTheme();
           //  final cubit = context.read<SettingCubit>();
           //  cubit.toggleTheme();

          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),

        ListTile(
          leading: Image.asset('assets/images/login.png',height: 30,),
          title: Text(
            'Logout',
            style:Styles.textStyle22,

          ),
          onTap: (){
            MyAppMethod.showErrorOrWarningDialog(
              context: context,
              data: 'Are you sure? you want to logout',
              fct: () {},
              isError: false,
            );
          },
          trailing:const Icon(IconlyLight.arrow_right_2),
        ),
      ],
    );
  }
}
