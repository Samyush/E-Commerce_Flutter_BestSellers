import 'package:best_sellers/models/Product.dart';
import 'package:best_sellers/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:best_sellers/Category_Section/builder_DisplaySingle.dart';

class DisplayListBuilder extends StatelessWidget {
  final List itemCategory;
  DisplayListBuilder({@required this.itemCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 200.0,
              child: GridView.count(
                crossAxisCount: 3,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: List.generate(
                  itemCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DisplayBuilder(
                      itemName: itemCategory[index]["name"],
                      imgPath: itemCategory[index]["image"],
                      //press: () {
                      //   //the following directs towards the per sign in index page
                      //   Navigator.pushNamed(context, categories[index]["page"]);
                      // },
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments:
                            ProductDetailsArguments(product: demoProducts[0]),
                      ),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }
}
