import 'package:categlory/core/model/meal_model.dart';
import 'package:categlory/core/viewmodel/favor_view_model.dart';
import 'package:categlory/ui/pages/detail/detail_content.dart';
import 'package:categlory/ui/pages/favor/favor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HZYDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    final HZYMealModel meal = ModalRoute.of(context).settings.arguments as HZYMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: HZYDetailContent(meal),
      floatingActionButton: Consumer<HZYFavorViewModel>(
        builder: (context, favorVM, child) {
          final iconData = favorVM.isFavor(meal) ? Icons.favorite : Icons.favorite_border;
          final iconColor = favorVM.isFavor(meal) ? Colors.red : Colors.black54;
          return FloatingActionButton(
            child: Icon(iconData,color: iconColor,),
            onPressed: () {
              favorVM.handleMeal(meal);
            },
          );
        },
      )
    );
  }
}
