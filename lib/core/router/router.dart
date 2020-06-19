import 'package:categlory/ui/pages/main/main.dart';
import 'package:flutter/material.dart';



class HYRouter {
  static final String initialRoute = HZYMainScreen.routerName;

  static final Map<String, WidgetBuilder> routes = {
    HZYMainScreen.routerName:(ctx) => HZYMainScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}