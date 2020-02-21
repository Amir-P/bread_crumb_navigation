import 'package:bread_crumb_navigation/navigation_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarBrightness: Brightness.light));
    return MaterialApp(
      navigatorObservers: [NavigationObserver()],
      home: HomePage(),
    );
  }
}
