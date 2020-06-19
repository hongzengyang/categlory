import 'package:categlory/ui/pages/favor/favor.dart';
import 'package:categlory/ui/pages/home/home.dart';
import 'package:flutter/material.dart';


final List<Widget> pages = [
  HZYHomeScreen(),
  HZYFavorScreen()
];



final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      title: Text("收藏"),
      icon: Icon(Icons.star)
  )
];