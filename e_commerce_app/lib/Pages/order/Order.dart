import 'package:flutter/material.dart';

import '../../Constant/Colors.dart';
import '../../Constant/Styles.dart';
import '../../Widget/CustomEmpty.dart';
import '../../Widget/WidgetAppBar.dart';
import 'OrderWidget.dart';

class Order extends StatelessWidget {
  Order({super.key});

  bool isEmptyOrders = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const WidgetAppBar(
          data: 'Orders',
        ),
        body: isEmptyOrders
            ? CustomEmpty(
          imagePath: 'assets/images/nosee.png',
          label: 'oops,',
          title: 'No orders has been placed yet 😔',
          buttonText: 'Shop Now',
        )
            : ListView.separated(
                itemCount: 15,
                itemBuilder: (ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 6),
                    child: OrderWidget(),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ));
  }
}
