import 'package:flutter/material.dart';

import 'components/body.dart';

class MyOrders extends StatelessWidget {
  static String routeName = "/myOrders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
      ),
      body: Body(),
    );
  }
}
