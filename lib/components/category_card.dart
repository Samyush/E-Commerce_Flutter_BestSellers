import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {this.onTap,
      this.cardChild,
      this.colour,
      this.height,
      this.gradient,
      this.image});

  final Function onTap;
  final Widget cardChild;
  final Color colour;
  final double height;
  final Gradient gradient;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: height,
            child: cardChild,
            margin: EdgeInsets.only(
              right: 30.5,
              left: 30.5,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(15.0),
              gradient: gradient,
              boxShadow: [
                /*BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
