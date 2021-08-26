import 'package:best_sellers/components/default_button.dart';
import 'package:best_sellers/models/Cart.dart';
import 'package:best_sellers/models/Product.dart';
import 'package:best_sellers/size_config.dart';
import 'package:flutter/material.dart';
import '../../cart/cart_screen.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';
import 'package:best_sellers/screens/cart/cart_screen.dart';

class Body extends StatefulWidget {
  final Product product;
  const Body({Key key, @required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool present = false; //to check if the item is present in the cart
  @override
  void initState() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: widget.product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {
                            if (counter != 0) {
                              for (var element in demoCarts) {
                                if (widget.product.title ==
                                    element.product.title) {
                                  element.numOfItem =
                                      element.numOfItem + counter;
                                  present = true;
                                  break;
                                } else {
                                  present = false;
                                }
                              }
                              if (present == false) {
                                demoCarts.add(Cart(
                                    product: widget.product,
                                    numOfItem: counter));
                              }
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()),
                            );
                            setState(() {
                              counter = 0;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
