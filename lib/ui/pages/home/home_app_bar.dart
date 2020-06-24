import 'package:flutter/material.dart';
class HZYHomeAppBar extends AppBar {

  HZYHomeAppBar(context) : super (
    title: Text("美时广场"),
    leading: Builder(
      builder: (ctx) {
        return IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Scaffold.of(ctx).openDrawer();
          },
        );
      },
    )
  );
}
