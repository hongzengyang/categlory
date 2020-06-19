
import 'package:flutter/material.dart';

import 'home_content.dart';

class HZYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美时广场"),
      ),
      body: HZYHomeContent()
    );
  }
}
