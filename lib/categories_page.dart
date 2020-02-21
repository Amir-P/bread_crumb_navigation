import 'package:flutter/material.dart';
import 'bread_crumb_navigation.dart';
import 'item_page.dart';

class CategoriesPage extends StatelessWidget {
  final categories = ['First Category', 'Second Category', 'Third Category'];

  static MaterialPageRoute getRoute() => MaterialPageRoute(
      settings: RouteSettings(name: 'Categories'),
      builder: (context) => CategoriesPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BreadCrumbNavigator(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                    children: categories
                        .map((category) => GestureDetector(
                              onTap: () => Navigator.push(
                                  context, ItemPage.getRoute(category)),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(category),
                                ),
                              ),
                            ))
                        .toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
