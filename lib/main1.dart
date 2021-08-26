/*
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Best Sellers'),
      ),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool signin = true;

  TextEditingController namectrl, emailctrl, passctrl;

  bool processing = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namectrl = new TextEditingController();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 200,
              color: Colors.blue,
            ),
            boxUi(),
          ],
        ));
  }

  void changeState() {
    if (signin) {
      setState(() {
        signin = false;
      });
    } else
      setState(() {
        signin = true;
      });
  }

  void registerUser() async {
    setState(() {
      processing = true;
    });
    var url = "http://10.0.2.2:8000/api/register";
    var data = {
      "email": emailctrl.text,
      "full_name": namectrl.text,
      "address": namectrl.text,
      "phone": namectrl.text,
      "profile_picture": '',
      "login_type": namectrl.text,
      "status": namectrl.text,
      "vendor_token": namectrl.text,
      "password": passctrl.text,
    };

    var response = await http.post(url, body: data);

    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "account created, Please login",
          toastLength: Toast.LENGTH_SHORT);
    } else {
      // if (jsonDecode(response.body) == "true") {
      //   Fluttertoast.showToast(
      //       msg: "account created", toastLength: Toast.LENGTH_SHORT);
      // } else {
      Fluttertoast.showToast(msg: "error", toastLength: Toast.LENGTH_SHORT);
      // }
    }
    setState(() {
      processing = false;
    });
  }

  void userSignIn() async {
    setState(() {
      processing = true;
    });
    var url = "http://10.0.2.2:8000/api/login";
    Map data = {
      "email": emailctrl.text,
      "password": passctrl.text,
    };

    var response = await http.post(url, body: data);

    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "You have account", toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: "incorrect password", toastLength: Toast.LENGTH_SHORT);
    }

    setState(() {
      processing = false;
    });
  }

  Widget boxUi() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.varelaRound(
                      color: signin == true ? Colors.blue : Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.varelaRound(
                      color: signin != true ? Colors.blue : Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            signin == true ? signInUi() : signUpUi(),
          ],
        ),
      ),
    );
  }

  Widget signInUi() {
    return Column(
      children: <Widget>[
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'email'),
        ),
        TextField(
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'pass'),
        ),
        SizedBox(
          height: 10.0,
        ),
        MaterialButton(
            onPressed: () => userSignIn(),
            child: processing == false
                ? Text(
              'Sign In',
              style: GoogleFonts.varelaRound(
                  fontSize: 18.0, color: Colors.blue),
            )
                : CircularProgressIndicator(
              backgroundColor: Colors.red,
            )),
      ],
    );
  }

  Widget signUpUi() {
    return Column(
      children: <Widget>[
        TextField(
          controller: namectrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'name'),
        ),
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'email'),
        ),
        TextField(
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'pass'),
        ),
        SizedBox(
          height: 10.0,
        ),
        MaterialButton(
            onPressed: () => registerUser(),
            child: processing == false
                ? Text(
              'Sign Up',
              style: GoogleFonts.varelaRound(
                  fontSize: 18.0, color: Colors.blue),
            )
                : CircularProgressIndicator(backgroundColor: Colors.red)),
      ],
    );
  }

// now we will setup php and database
//thank you
}
*/
