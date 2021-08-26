import 'package:best_sellers/components/message_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../total_price_method.dart';

class Payment extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Text(
                    'TOTAL BALANCE',
                    style: TextStyle(fontSize: 20.0, color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(26.0),
                  ),
                  Text(
                    'Rs.',
                    style: TextStyle(fontSize: 35.0, color: Colors.black87),
                  ),
                  Text(
                    total.toStringAsFixed(3),
                    style: TextStyle(fontSize: 55.0, color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          FlatButton(
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(190, 0, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.teal,
                ),
                Text(
                  'Add Payment Card',
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text('PAYMENT METHODS:',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            // padding: EdgeInsets.only(
            //     top: 20.0, left: 20.0, right: 20.0),
            //color: Colors.blue[800],
            child: Column(
              children: <Widget>[
                //card1
                Container(
                  // height: 200,
                  margin: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                                onPressed: () {
                                  customLaunch(
                                      'https://www.paypal.com/np/signin?country.x=NP&locale.x=en_NP');
                                },
                                child: Image(
                                    image:
                                        AssetImage('assets/images/paypal.png'),
                                    width: 190,
                                    height: 100,
                                    fit: BoxFit.fill),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                //card1end
                //card2
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                                onPressed: () {
                                  customLaunch('https://esewa.com.np/#/home');
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => esewa()),
                                  // );
                                },
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/esewa-logo.png'),
                                    width: 180,
                                    height: 100,
                                    fit: BoxFit.fill),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[400],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                //card2end
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Colors.indigo,
                    color: Colors.teal,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: FlatButton(
                          child: Text(
                            'Proceed to Payment',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            showGeneralDialog(
                              context: context,
                              pageBuilder: (BuildContext buildContext,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return MessageBox();
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
