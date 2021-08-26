import 'package:best_sellers/screens/cart/components/cart_card.dart';
import 'package:best_sellers/screens/myOrders/components/OrderList.dart';
import 'package:best_sellers/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: orderList.length == 0
          ? Center(
              child: Container(
                child: Text(
                  'No orders yet',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          : ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CartCard(cart: orderList[index]),
              ),
            ),
    );
  }
}
