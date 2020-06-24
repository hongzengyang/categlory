import 'package:categlory/core/model/category_model.dart';
import 'package:categlory/ui/pages/meal/meal_content.dart';
import 'package:flutter/material.dart';

class HZYMealScreen extends StatelessWidget {
  static const String routeName = "/meal";
  @override
  Widget build(BuildContext context) {

    //获取参数
    final category = ModalRoute.of(context).settings.arguments as HZYCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: HZYMealContent(),
      ),
    );
  }
}
