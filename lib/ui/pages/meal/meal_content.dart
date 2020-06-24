
import 'package:categlory/core/model/category_model.dart';
import 'package:categlory/core/model/meal_model.dart';
import 'package:categlory/core/viewmodel/meal_view_model.dart';
import 'package:categlory/ui/widgets/meal_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';


class HZYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取参数
    final category = ModalRoute.of(context).settings.arguments as HZYCategoryModel;
    return Selector<HZYMealViewModel, List<HZYMealModel>> (
      selector: (ctx,mealVM) => mealVM.meals.where((meal) => meal.categories.contains(category.id)).toList(),
      shouldRebuild: (prev,next) => ListEquality().equals(prev, next),
      builder: (ctx,meals,child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return HZYMealItem(meals[index]);
          },
        );
      },
    );
  }
}

//class HZYMealContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    //获取参数
//    final category = ModalRoute.of(context).settings.arguments as HZYCategoryModel;
//    return Consumer<HZYMealViewModel> (
//      builder:(ctx, mealVM, child) {
//        final meals = mealVM.meals.where((meal) => meal.categories.contains(category.id)).toList();
//        return ListView.builder(
//          itemCount: meals.length,
//          itemBuilder: (ctx, index) {
//            return ListTile(title: Text(meals[index].title));
//          }
//        );
//      }
//    );
//  }
//}
