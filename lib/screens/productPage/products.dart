import 'package:flutter/material.dart';

import 'components/Body.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Body(),
    );
  }
}
