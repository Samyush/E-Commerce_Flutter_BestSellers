import 'package:flutter/material.dart';
import 'package:best_sellers/Category_Section/builder_Displaylist.dart';
import 'package:best_sellers/Category_Section/Lists.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    Key key,
  }) : super(key: key);

  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List categoryList = [
    '',
    // 'Item 2',
    // 'Item 3',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: categoryList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.black12,
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ListView(
        children: <Widget>[
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                for (String category in categoryList)
                  Tab(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 1.0,
                      ),
                    ),
                  ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 70,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                DisplayListBuilder(itemCategory: item1),
                // DisplayListBuilder(itemCategory: item2),
                // DisplayListBuilder(itemCategory: item3),
              ]))
        ],
      ),
    );
  }
}
