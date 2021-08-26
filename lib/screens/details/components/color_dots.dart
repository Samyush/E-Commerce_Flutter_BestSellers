import 'dart:async';
import 'package:best_sellers/components/rounded_icon_btn.dart';
import 'package:best_sellers/models/Cart.dart';
import 'package:best_sellers/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  final Product product;
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter == 0 ? counter = 0 : counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              decrement();
            },
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 40.0),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              increment();
            },
          ),
        ],
      ),
    );
    //
//     return new MaterialApp(
//       title: "Number Count",
//       theme: new ThemeData(
//           primarySwatch: Colors.blueGrey
//       ),
//       home: new NumberCountDemo(),
//     );
//   }
// }
// int _n = 0;
// class NumberCountDemo extends StatefulWidget {
//   @override
//   _NumberCountDemoState createState() => new _NumberCountDemoState();
//   void add() {
//     setState(() {
//       _n++;
//     });
//   }
//   void minus() {
//     setState(() {
//       if (_n != 0)
//         _n--;
//     });
//   }
// }

// class _NumberCountDemoState extends State<NumberCountDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: new Center(
//         child: new Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             new FloatingActionButton(
//               onPressed: add,
//               child: new Icon(Icons.add, color: Colors.black,),
//               backgroundColor: Colors.white,),
//
//             new Text('$_n',
//                 style: new TextStyle(fontSize: 60.0)),
//
//             new FloatingActionButton(
//               onPressed: minus,
//               child: new Icon(
//                   const IconData(0xe15b, fontFamily: 'MaterialIcons'),
//                   color: Colors.black),
//               backgroundColor: Colors.white,),
//           ],
//         ),
//       ),
//     ),
//     );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
