import 'package:categlory/ui/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

class HZYMainScreen extends StatefulWidget {
  static const routerName = "/";


  @override
  _HZYMainScreenState createState() => _HZYMainScreenState();
}

class _HZYMainScreenState extends State<HZYMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

