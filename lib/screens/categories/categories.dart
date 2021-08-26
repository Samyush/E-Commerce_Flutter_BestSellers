import 'package:best_sellers/Category_Section/categorySection.dart';
import 'package:best_sellers/components/category_card.dart';
import 'package:best_sellers/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

//search box is defined as SearchField()

class Categories extends StatelessWidget {
  static String routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category List"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 37, left: 37, bottom: 20),
              child: Container(
                height: 57,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SearchField(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategorySection()),
                  );
                },
                child: CategoryCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.,
                  ),
                  height: kCategoryListHeight,
                  // colour: Colors.grey,
                  image: "assets/images/category1.jpg",
                  // onTap: () {
                  //   Navigator.pop(context);
                  // },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategorySection()),
                  );
                },
                child: CategoryCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: kCategoryListHeight,
                  // colour: Colors.grey,
                  image: "assets/images/category2.jpg",
                  /*gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffF74C9F), Color(0xffFE6B7D)],
                  ),*/
                  // onTap: () {
                  //   Navigator.pop(context);
                  // },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategorySection()),
                  );
                },
                child: CategoryCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: kCategoryListHeight,
                  // colour: Colors.grey,
                  image: "assets/images/category3.jpg",
                  /*gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffC3F8F8), Color(0xff4996E5)],
                  ),*/
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: context => CategorySection()),
                  //   );
                  // },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
