import 'package:categlory/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import '../../../core/model/category_model.dart';
import 'package:categlory/core/extension/int_extension.dart';

class HZYHomeCategoryItem extends StatelessWidget {
  final HZYCategoryModel _categoryModel;

  HZYHomeCategoryItem(this._categoryModel);
  @override
  Widget build(BuildContext context) {
    final bgColor = _categoryModel.cColor;
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.px),
              gradient: LinearGradient(
                  colors: [
                    bgColor.withOpacity(0.5),
                    bgColor
                  ]
              )
          ),
          child: Center(child: Text(_categoryModel.title,style: Theme.of(context).textTheme.display2.copyWith(
              fontWeight:FontWeight.bold
          )))
      ),
      onTap: () {
        Navigator.of(context).pushNamed(HZYMealScreen.routeName,arguments: _categoryModel);
      },
    );
  }
}
