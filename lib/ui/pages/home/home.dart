
import 'package:categlory/ui/pages/home/home_app_bar.dart';
import 'package:categlory/ui/pages/home/home_drawer.dart';
import 'package:flutter/material.dart';

import 'home_content.dart';

class HZYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HZYHomeAppBar(context),
      body: HZYHomeContent(),
      drawer: HZYHomeDrawer()
    );
  }
}
