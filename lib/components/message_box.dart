import 'package:best_sellers/models/Cart.dart';
import 'package:best_sellers/screens/bottomNav/bottomNavs.dart';
import 'package:best_sellers/screens/myOrders/components/OrderList.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.34,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 5.0),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 50.0,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'The payment was successful',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                demoCarts.forEach((item) {
                  orderList.add(item);
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                );
              },
              child: Container(
                width: 60.0,
                height: 40.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    color: Colors.greenAccent),
                child: Center(child: Text('OK')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
