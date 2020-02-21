import 'package:flutter/material.dart';

List<Route> routeStack = List();

class NavigationObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    routeStack.add(route);
  }

  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    routeStack.remove(route);
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    super.didRemove(route, previousRoute);
    routeStack.remove(route);
  }

  @override
  void didReplace({Route newRoute, Route oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    final index = routeStack.indexOf(oldRoute);
    routeStack[index] = newRoute;
  }
}
