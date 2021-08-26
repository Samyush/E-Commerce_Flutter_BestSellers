import 'package:flutter/material.dart';


class esewa extends StatefulWidget {
  @override
  _esewaState createState() => _esewaState();
}

class _esewaState extends State<esewa> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esewa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                'assets/images/esewa.png'),
                            width: 200.0,
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 350.0,
                        child:
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(
                              // fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[900]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 350.0,
                        child:
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              // fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[900]),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                              child: Icon(
                                _showPassword ? Icons.visibility : Icons.visibility_off,
                              ),
                            ),
                          ),
                          obscureText: !_showPassword, //makes pw invisible while typing
                        ),
                      ),
                      SizedBox(height: 5.0,),

                      Container(
                        alignment: Alignment(0.7, 0.0),
                        //making an alignment in x and y axis to place text in right side
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: FlatButton( //gives tapping effect
                          child: Text('Forgot Password?',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => esewa()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        //height: 50.0,
                        width: 300.0,
                        child: Material(
                          //borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.lightGreen,
                          color: Colors.green[900],
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: FlatButton(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => esewa()),
                                  );
                                },
                              ),

                            ),

                          ),
                        ),
                      ),
                      Divider(
                        height: 80,
                        thickness: 2,
                      ),
                      Text('or', style:
                      TextStyle(
                        fontSize: 18,
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: RaisedButton(
                          child: Text('Create new account',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => esewa()));
                          },
                        ),
                      ),
                    ],

                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

