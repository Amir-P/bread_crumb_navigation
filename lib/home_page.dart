import 'package:flutter/material.dart';
import 'bread_crumb_navigation.dart';
import 'categories_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BreadCrumbNavigator(),
            Expanded(
              child: Center(
                child: Text('Home Page'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CategoriesPage.getRoute());
        },
        child: Icon(Icons.category),
      ),
    );
  }
}
