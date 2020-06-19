import 'package:categlory/core/router/router.dart';
import 'package:categlory/ui/shared/app_theme.dart';
import 'package:categlory/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    HYSizeFit.initialize();

    return MaterialApp(
      title: '美食广场',


      theme: HYAppTheme.norTheme,


      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
