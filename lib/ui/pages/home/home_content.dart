import 'package:flutter/material.dart';

import 'package:categlory/core/model/category_model.dart';
import 'package:categlory/core/services/json_parse.dart';
import 'package:categlory/core/extension/int_extension.dart';



class HZYHomeContent extends StatefulWidget {
  @override
  _HZYHomeContentState createState() => _HZYHomeContentState();
}

class _HZYHomeContentState extends State<HZYHomeContent> {

  List<HZYCategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();

    //加载数据
    JsonParse.getCategoryData().then((res) {
      _categories = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.px),
      itemCount: _categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.px,
        mainAxisSpacing: 20.px,
        childAspectRatio: 1.5
      ),
      itemBuilder: (ctx, index) {
        final bgColor = _categories[index].cColor;
        return Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                bgColor.withOpacity(0.5),
                bgColor
              ]
            )
          ),
          child: Center(child: Text(_categories[index].title,style: Theme.of(ctx).textTheme.display2.copyWith(
            fontWeight:FontWeight.bold
          )))
        );
      }
    );
  }
}
