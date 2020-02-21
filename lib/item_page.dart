import 'package:flutter/material.dart';

import 'bread_crumb_navigation.dart';

class ItemPage extends StatelessWidget {
  final String category;

  ItemPage(this.category);

  static MaterialPageRoute getRoute(String category) => MaterialPageRoute(
      settings: RouteSettings(name: category),
      builder: (context) => ItemPage(category));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BreadCrumbNavigator(),
            Expanded(
              child: Center(
                child: Text(category),
              ),
            ),
          ],
        ),
      ),
    );
  }
}