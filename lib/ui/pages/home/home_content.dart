
import 'package:flutter/material.dart';

import 'package:categlory/core/model/category_model.dart';
import 'package:categlory/core/services/json_parse.dart';
import 'package:categlory/core/extension/int_extension.dart';
import 'package:categlory/ui/pages/home/home_category_item.dart';



class HZYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<HZYCategoryModel>>(
      future: HZYJsonParse.getCategoryData(),
      builder: (ctx, snapshot) {
        if(!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        if(snapshot.hasError) {
          return Center(child: Text("请求失败"));
        }

        final categories = snapshot.data;
        return GridView.builder(
            padding: EdgeInsets.all(20.px),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.px,
                mainAxisSpacing: 20.px,
                childAspectRatio: 1.5
            ),
            itemBuilder: (ctx, index) {
              return HZYHomeCategoryItem(categories[index]);
            }
        );
      },
    );
  }
}
