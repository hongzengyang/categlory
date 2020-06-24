import 'package:categlory/core/router/router.dart';
import 'package:categlory/core/services/meal_request.dart';
import 'package:categlory/core/viewmodel/favor_view_model.dart';
import 'package:categlory/core/viewmodel/meal_view_model.dart';
import 'package:categlory/ui/shared/app_theme.dart';
import 'package:categlory/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => HZYMealViewModel(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => HZYFavorViewModel(),
          ),
        ],
        child: MyApp(),
      )
  );
}

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
